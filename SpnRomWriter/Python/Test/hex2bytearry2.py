import time
import sys
from machine import Pin, I2C

N_BYTES = 4         # 一度に読み書きするバイト数
DATA_LEN = 4096     # 32kBits
MAX_LINES = 1026    # シリアルで読み込む最大行数

# def hex2bin(hexstr):
#     if hexstr[0] != ':':
#         print('Invalid header character')
#         return -1
#     data = []
#     for i in range((len(hexstr) - 1) / 2):
#         s = hexstr[i * 2 + 1 : i * 2 + 3]
#         data.append(int(s, 16))
#     return data

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
    
def checksum(data):
    sum = 0
    for n in data:
        sum += n
    sum &= 0xff
    return sum

def receiveData():
    bArr = bytesarray(DATA_LEN)
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
        addr = data[1] << 8 | data[2]
        for i in range(n):
            bArr[addr] = data[3 + i]
    else:
        print('No data end detected.')
        return -1

# main routine
while True:
    print('Please send a HEX file.')
    bArr = receiveData()
    if (bArr == -1):
        continue
    print('HEX file received successfully.')

    for memaddr in range(0, DATA_LEN, N_BYTES):
        ba = bArr[memaddr:memaddr+N_BYTES]
        print('%04X' % memaddr, end=':')
        for b in ba:
            print('%02X' % b, end=':')
        print('')

