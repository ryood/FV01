/*
 *  Interl HEXコードをSerial受信、パースするテストプログラム
 *  
 *  2022.04.28
 */
 
#define TITLE_STR   ("RecieveHex_Test.20220428")
#define BUFFER_LEN  (32)
#define MAX_LINES   (1025)

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
 * 受信した数値配列をシリアル出力
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
  Serial.print("\t");
  Serial.print(sum & 0xff, HEX);

  return sum & 0xff;
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
      // Serialで1行受信
      String aLine = Serial.readStringUntil(0x0A);
      //Serial.println(aLine);

      // 文字列を数値に変換
      uint8_t n[BUFFER_LEN] = {0};
      int count = lineToNum(n, aLine.c_str(), BUFFER_LEN);
      if (count == -1) {
        Serial.print("Invalid data format: line: ");
        Serial.println(j + 1);
        errorHandler();
      }
      Serial.print(j + 1);
      Serial.print(":\t");
      printNumArray(n, count);

      // チェックサム
      if (checkSum(n, count) != 0) {
        Serial.print("Invalid check sum: line: ");
        Serial.print(j + 1);
        errorHandler();
      }

      // データエンドを検出
      if (n[3] == 1) {
        break;
      }

      /*
      // 1レコード4バイト確認
      if (n[0] != 4) {
        Serial.print("Only 4-byte data is available: ");
        Serial.print(j + 1);
        errorHandler();
      }
      */
      
      // アドレスとデータを取得
      uint8_t dataN = n[0];
      uint16_t address = (uint16_t)n[1] << 8 | n[2];
      uint8_t *data = &n[4];
      Serial.print('\t');
      Serial.print(address, HEX);
      Serial.print(": ");
      for (int i = 0; i < dataN; i++) {
        Serial.print(*(data + i), HEX);
        Serial.print(':');
      }
      Serial.println("");
    }
    Serial.println("");
    Serial.println("Data receprion end.");
  }
}
