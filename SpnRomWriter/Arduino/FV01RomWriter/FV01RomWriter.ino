/*
 *  FV01 Rom Writer
 *  
 *  Spin AsmでアセンブルしたHEXファイルをシリアル受信し
 *  EEPROM(24LC32A)に書き込む。
 *  
 *  2022.05.02
 */

#include <Wire.h>

#define TITLE_STR   ("FV01RomWriter 20220428")
#define I2C_ADDRESS (0x50)  // B1010000
#define ROM_SIZE    (4096)  // bytes (32Kbits/8)
#define BUFFER_LEN  (32)
#define MAX_LINES   (1025)

void setup()
{
  Serial.begin(9600); 
  Serial.println(TITLE_STR);
}

void loop() 
{
  if (Serial.available()) {
    Serial.println("Start recieving data.");
    for (int j = 0; j < MAX_LINES; j++) {
      // Serialからデータを読み込み
      uint16_t address;
      uint8_t data[32];
      int dataN = readALineFromSerial(&address, data, 32);
      if (dataN == 0) {
        break;
      }
      else if (dataN == -1) {
        Serial.print("line: ");
        Serial.print(j + 1);
        errorHandler();
      }

      // EEPROMにデータを書き込み
      Serial.println("Writing EEPROM");
      Serial.print(j + 1);
      Serial.print(":\t");
      Serial.print(address, HEX);
      Serial.print(":\t");
      Serial.print(dataN);
      Serial.print(":\t");
      for (int i = 0; i < dataN; i++) {
        eepromWrite(I2C_ADDRESS, address + i, data[i]);
      }
      Serial.println("Writing EEPROM end");


      // EEPROMのデータをベリファイ
      for (int i = 0; i < dataN; i++) {
        uint8_t v = eepromRead(I2C_ADDRESS, address + i);
        if (v != data[i]) {
          Serial.print(" Very Error:");
          Serial.print(v, HEX);
          Serial.print(":");
          Serial.print(data[i], HEX);
          errorHandler();
        }
        Serial.print(data[i], HEX);
        Serial.print(":");
      }
      Serial.println("");
    }
    Serial.println("Data receprion end.");
    Serial.println("Writing to EEPROM completed.");
  }
}

/*
 *  1桁のHEX文字をuint8_tに変換
 */
int hex1DigitToUint8(char c)
{
  int n = -1;
  if (c >= '0' && c <= '9') {
    n = c - '0';
  }
  else if (c >= 'A' && c <= 'F') {
    n = c - 'A' + 10;
  }
  else if (c >= 'a' && c <= 'f') {
    n = c - 'a' + 10;
  }
  return n;
}

/*
 *  2桁のHEX文字列をuint8_tに変換
 */
int hex2DigitToUint8(const char *c)
{
  uint8_t n1 = hex1DigitToUint8(*c);
  uint8_t n2 = hex1DigitToUint8(*(c + 1));

  if (n1 == -1 || n2 == -1) {
    return -1;
  }
  return (n1 << 4) | n2;
}

/*
 * HEX形式の1行をuint8_tの配列に変換
 */
int lineToNum(uint8_t *dest, const char *line, int len)
{
  const char *p = line;
  
  if (*p != ':') {
    return -1;
  }

  p++;

  for (int i = 0; i < len; i++) {
    if (*p == '\0') {
      return i;
    }
    dest[i] = hex2DigitToUint8(p) & 0xff;
    if (*++p == '\0') {
      return -1;
    }
    p++;
  }
  
  return -1;
}

/*
 * 数値配列をシリアル出力
 */
void printNumArray(uint8_t *buff, int n)
{
  Serial.print(n);
  Serial.print(":\t");
  for (int i = 0; i < n; i++) {
    Serial.print(buff[i], HEX);
    Serial.print(':');
  }
}

/*
 * チェックサム
 */
int checkSum(uint8_t *buff, int n)
{
  int sum = 0;
  for (int i = 0; i < n; i++) {
    sum += buff[i];
  }
  return sum & 0xff;
}

/*
 * Serialから一行読み込み
 * 
 * Returns: 読み込んだdataの個数
 *           0: データエンドを検出
 *          -1: エラー
 */
int readALineFromSerial(uint16_t *address, uint8_t *data, int len)
{
  // Serialで1行受信
  String aLine = Serial.readStringUntil(0x0A);
  //Serial.println(aLine);

  // 文字列を数値に変換
  uint8_t n[BUFFER_LEN] = {0};
  int count = lineToNum(n, aLine.c_str(), BUFFER_LEN);
  if (count == -1) {
    Serial.print("Invalid data format: ");
    return -1;
  }

  // チェックサム
  if (checkSum(n, count) != 0) {
    Serial.print("Invalid check sum: ");
    return -1;
  }

  // データエンドを検出
  if (n[3] == 1) {
    return 0;
  }
  
  // アドレスとデータを取得
  uint8_t dataN = n[0];
  if (dataN > len) {
    Serial.print("Too much data: ");
    return -1;
  }
  *address = (uint16_t)n[1] << 8 | n[2];
  uint8_t *p = &n[4];
  for (int i = 0; i < dataN; i++) {
    *data++ = *p++;
  }

  return dataN;
}

/*
 *  EEPROMに書き込み
 */
void eepromWrite(uint8_t i2cAddress, uint16_t romAddress, uint8_t data)
{
  Serial.println(i2cAddress, HEX);
  Serial.println(romAddress, HEX);
  Serial.println(data, HEX);
  Wire.beginTransmission(i2cAddress);
  Serial.println("begin Wire");
  Wire.write(romAddress >> 8);
  Serial.println("romAddress H");
  Wire.write(romAddress & 0xff);
  Serial.println("romAddress L");
  Wire.write(data);
  Serial.println("data");
  Wire.endTransmission();
  Serial.println("end Wire");
  delay(5);
}

/*
 *  EEPROMから読み込み
 */
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

/*
 * エラー処理
 */
void errorHandler()
{
  while (1) {
    ;
  }
}
