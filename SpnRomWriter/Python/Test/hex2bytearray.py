import time
import sys
from machine import Pin, I2C

MAX_LINES = 1026

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
    dataArray = []
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
            break;
        dataArray.append(data)
    return dataArray   

# main routine
while True:
    print('Please send a HEX file.')
    dataArray = receiveData()
    if (dataArray == -1):
        continue
    print('HEX file received successfully.')

    for array in dataArray:
        for data in array:
            print('%02X' % data, end=':')
        print('')

#i2c = I2C(0, scl=Pin(5), sda=Pin(4), freq=100000)


# i2c.writeto_mem(0x50, 0x0100, bytes([0x37]), addrsize=16)
# time.sleep_ms(5)
# d100 = i2c.readfrom_mem(0x50, 0x0100, 1, addrsize=16)
# print(str(d100))
# #
# i2c.writeto_mem(0x50, 0x0101, bytes([0x34]), addrsize=16)
# time.sleep_ms(5)
# d101 = i2c.readfrom_mem(0x50, 0x0101, 1, addrsize=16)
# print(str(d101))


    
