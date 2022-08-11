import time
from machine import Pin, I2C

def hex2bin(hexstr):
    if hexstr[0] != ':':
        print('Invalid header character')
        return -1
    data = []
    for i in range((len(hexstr) - 1) / 2):
        s = hexstr[i * 2 + 1 : i * 2 + 3]
        data.append(int(s, 16))
        
    return data
    

hexStr = ':04000000804000112B'

data = hex2bin(hexStr)
for i in data:
    print('%02X' % i, end=':')


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
