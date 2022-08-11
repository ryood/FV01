#
# SpnRomWriter.py
#
# SpnAsmが出力したHEXファイルを24LC32A(EEPROM)に書き込む
#
# Target: Raspberry Pi pico / micropython
#
# 2022.05.06
#
import time
import sys
from machine import Pin, I2C

N_BYTES = 4         # 一度に読み書きするバイト数
DATA_LEN = 4096     # 32KBits
MAX_LINES = 1026    # シリアルで読み込む最大行数

# HEX文字列をバイナリに変換
def hex2bin(hexstr):
    if hexstr[0] != ':':
        print('Invalid header character')
        return -1
    hexstr = hexstr[1:]
    data = []
    for i in range(0, len(hexstr), 2):
        s = hexstr[i : i + 2]
        data.append(int(s, 16))
    return data
    
# チェックサム
def checksum(data):
    sum = 0
    for n in data:
        sum += n
    sum &= 0xff
    return sum

# シリアルからHEXファイルを受信
def receiveData():
    bArr = bytearray(DATA_LEN)
    for i in range(MAX_LINES):
        hexStr = input()
        data = hex2bin(hexStr)
        if (data == -1):
            print('line:', i + 1, ': data is invalid')
            return -1
        # チェックサム
        if (checksum(data) != 0):
            print('line:', i + 1, ': checkusm is invalid')
            return -1
        # データエンドを検出
        if (data[3] == 1):
            return bArr;
        # データをbytearrayに格納
        n = data[0]
        addr = (data[1] << 8) | data[2]
        for i in range(n):
            bArr[addr + i] = data[4 + i]
    else:
        print('No data end detected.')
        return -1

# EEPROMに書き込み
def writeEEPROM(bArr, dataLen, nBytes):
    for memaddr in range(0, dataLen, nBytes):
        ba = bArr[memaddr:memaddr+nBytes]
        i2c.writeto_mem(0x50, memaddr, ba, addrsize=16)
        time.sleep_ms(5)

# EEPROMから読み込み
def readEEPROM(dataLen, nBytes):
    bArr = bytearray()
    for memaddr in range(0, dataLen, nBytes):
        ba = i2c.readfrom_mem(0x50, memaddr, nBytes, addrsize=16)
        bArr.extend(ba)
    return bArr

# EEPROMのベリファイ
def verifyEEPROM(bArr):
    bytesOK = 0
    for memaddr in range(len(bArr)):
        b1 = bArr1[memaddr]
        bArr2 = i2c.readfrom_mem(0x50, memaddr, 1, addrsize=16)
        b2 = bArr2[0]
        if (b1 == b2):
            bytesOK += 1
        else:
            print('%04X:%02X:%02X Data is invalid.' % (memaddr, b1, b2))
    return bytesOK

# メインルーチン
time.sleep_ms(1000)
while True:
    print('Please send a HEX file.')
    # データを受信
    bArr = receiveData()
    if (bArr == -1):
        continue
    print('HEX file received successfully.')

    i2c = I2C(0, scl=Pin(5), sda=Pin(4), freq=100000)

    # EEPROMに書き込み
    print("Write to EEPROM.")
    writeEEPROM(bArr, DATA_LEN, N_BYTES)

    # EEROMから読み込み
    # print("Read from EEPROM.")
    # bArr2 = readEEPROM(DATA_LEN, N_BYTES)

    # データを比較して表示
    # for memaddr in range(0, DATA_LEN, N_BYTES):
        # ba1 = bArr[memaddr:memaddr+N_BYTES]
        # ba2 = bArr2[memaddr:memaddr+N_BYTES]
        # print('ORG:%04X:' % memaddr, end='')
        # for b1 in ba1:
            # print('%02X:' % b1, end='')
        # print('')
        # print('ROM:%04X:' % memaddr, end='')
        # for b2 in ba2:
            # print('%02X:' % b2, end='')
        # print('')

    print("Verify data.")
    bytesOK = verifyEEPROM(bArr)

    print('Verified:', bytesOK, 'bytes OK.')

