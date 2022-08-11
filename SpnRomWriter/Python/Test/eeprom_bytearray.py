import time
import random
from machine import Pin, I2C

N_BYTES = 4  # 一度に読み書きするバイト数
DATA_LEN = 4096

ba = bytearray()
for i in range(DATA_LEN):
    ba.append(random.randint(0, 0xff))

for memaddr in range(0, DATA_LEN, N_BYTES):
    da = ba[memaddr:memaddr+N_BYTES]
    print('%04X' % memaddr, end=':')
    for d in da:
        print('%02X' % d, end=':')
    print('')

i2c = I2C(0, scl=Pin(5), sda=Pin(4), freq=100000)

# EEPROMに書き込み
print("Write to EEPROM.")
for memaddr in range(0, DATA_LEN, N_BYTES):
    da = ba[memaddr:memaddr+N_BYTES]
    i2c.writeto_mem(0x50, memaddr, da, addrsize=16)
    time.sleep_ms(5)

# EEPROMから読み込み
print("Read from EEPROM.")
ba2 = bytearray()
for memaddr in range(0, DATA_LEN, N_BYTES):
    print('ORG:%04X' % memaddr, end=':')
    da = ba[memaddr:memaddr+N_BYTES]
    for d in da:
        print('%02X' % d, end=':')
    print('')
    da = i2c.readfrom_mem(0x50, memaddr, N_BYTES, addrsize=16)
    print('ROM:%04X' % memaddr, end=':')
    for d in da:
        print('%02X' % d, end=':')
        ba2.append(d)
    print('')

# ベリファイ
print("Verify data.")
for memaddr in range(DATA_LEN):
    b1 = ba[memaddr]
    b2 = ba2[memaddr]
    if (b1 != b2):
        print('%04X:%02X:%02X Data is invalid.' % (memaddr, b1, b2))
        break;
else:
    print('Verified.')
              
