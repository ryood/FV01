/*
 *  Serialで受信したInterl HEXコードを受信するテストプログラム
 *  
 *  2022.04.28
 */
 
#define TITLE_STR   ("Hex2Digit_Serial_Test.20220428")
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
 *  2桁のHEX文字をuint8_tに変換
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

void setup()
{
  Serial.begin(9600); 
  Serial.println(TITLE_STR);
}

void loop() 
{
  if (Serial.available()) {
    Serial.println("Start recieving data.");
    uint8_t n[BUFFER_LEN] = {0};
    for (int j = 0; j < MAX_LINES && n[3] != 1; j++) {
      String aLine = Serial.readStringUntil(0x0A);
      //Serial.println(aLine);
      
      int count = lineToNum(n, aLine.c_str(), BUFFER_LEN);
      if (count == -1) {
        Serial.println("Invalid start code(:).");
        while(1) {
          ;
        }
      }
      Serial.print(j);
      Serial.print(":\t");
      //Serial.print(count);
      //Serial.print(":\t");
      for (int i = 0; i < count; i++) {
        Serial.print(n[i], HEX);
        Serial.print(':');
      }
      Serial.println("");
    }
    Serial.println("Data receprion end.");
  }
}
