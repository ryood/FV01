#define BUFFER_LEN  (32)


/*
 * Serialから1行読み込み
 * 
 * Returns:  0:成功
 *          -1:エラー
 */

 int readLine(char* buffer, int length)
{
  int i = 0;
  while (i < length) {
    while(!Serial.available()) {
      ;
    }
    int c = Serial.read();
    if (c == 0x0A || c == 0x0D) {  // LF or CR
      buffer[i] = '\0';
      return 0;
    }
    buffer[i] = (char)c;
    i++;
  }
  return -1;
}

/*
 *  1桁のHEX文字をuint8_tに変換
 */
uint8_t Hex1DigitToUint8(char c)
{
  uint8_t n = 0;
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
uint8_t Hex2DigitToUint8(char *c)
{
  uint8_t n1 = Hex1DigitToUint8(*c);
  uint8_t n2 = Hex1DigitToUint8(*(c + 1));
  return (n1 >> 4) | n2;
}

int lineToNum(uint8_t *dest, char *line, int len)
{
  char *p = line;
  
  if (*p != ':') {
    return -1;
  }

  p++;

  for (int i = 0; i < len; i++) {
    if (*p == '\0') {
      return i;
    }
    dest[i] = Hex2DigitToUint8(p);
    p += 2;
  }
  
  return -1;
}

void setup()
{
  Serial.begin(9600); 
  while(1) {
    char rxBuffer[BUFFER_LEN] = {0};
    if (readLine(rxBuffer, BUFFER_LEN) != -1) {
      Serial.println(rxBuffer);
    }
    else {
      Serial.println("a line is too long.");
    }

    uint8_t n[32];
    int count = lineToNum(n, rxBuffer, 32);
    if (count != 0) {
      //Serial.print(count);
      //Serial.print(":\t");
      for (int i = 0; i < count; i++) {
        Serial.print(n[i], HEX);
        Serial.print(':');
      }
      Serial.println("");
    }
  }
}

void loop() 
{
}
