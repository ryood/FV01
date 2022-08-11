/*
  24LC32A Read / Write Test
  
  2022.04.26
*/

#include <Wire.h>

#define ROM_SIZE  (4096)  // bytes (32Kbits/8)
#define I2C_ADDRESS (0x50)  // B1010000

void setup()
{
  Wire.begin();
  Serial.begin(9600);
  
  Serial.print("Writing to EEPROM");
  for (int i = 0; i < ROM_SIZE; i++) {
    eepromWrite(I2C_ADDRESS, i, (uint8_t)(i &0xff));
    if ((i & 0xff) == 0) {
      Serial.print('.');
    }
  }
  Serial.println("");

  Serial.println("Reading from EEPROM...");
  for (int i = 0; i < ROM_SIZE; i++) {
    uint8_t data = eepromRead(I2C_ADDRESS, i);
    Serial.print(i);
    Serial.print(":");
    Serial.print(data);
    Serial.print(' ');
    if ((i & 0x0f) == 0x0f) {
      Serial.println("");
    }
  }
}

void loop()
{
}

void eepromWrite(uint8_t i2cAddress, uint16_t romAddress, uint8_t data)
{
  Wire.beginTransmission(i2cAddress);
  Wire.write(romAddress >> 8);
  Wire.write(romAddress & 0xff);
  Wire.write(data);
  Wire.endTransmission();
  delay(5);
}

uint8_t eepromRead(uint8_t i2cAddress, uint16_t romAddress)
{
  uint8_t data;
  
  Wire.beginTransmission(i2cAddress);
  Wire.write(romAddress >> 8);
  Wire.write(romAddress & 0xff);
  Wire.endTransmission();  
  Wire.requestFrom((int)i2cAddress, 1);
  while (Wire.available()) {
    data = Wire.read();
  }
  return data;
}
