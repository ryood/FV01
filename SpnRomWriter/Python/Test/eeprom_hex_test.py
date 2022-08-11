import time
from machine import Pin, I2C

i2c = I2C(0, scl=Pin(5), sda=Pin(4), freq=100000)



i2c.writeto_mem(0x50, 0x0100, bytes([0x37]), addrsize=16)
time.sleep_ms(5)
d100 = i2c.readfrom_mem(0x50, 0x0100, 1, addrsize=16)
print(str(d100))
#
i2c.writeto_mem(0x50, 0x0101, bytes([0x34]), addrsize=16)
time.sleep_ms(5)
d101 = i2c.readfrom_mem(0x50, 0x0101, 1, addrsize=16)
print(str(d101))