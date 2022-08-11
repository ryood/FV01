const char *line[17] = {
  ":04000000804000112B",
  ":0400040000C0141212",
  ":0400080020C0BB92C7",
  ":04000C007FFE02442D",
  ":040010007FFE000D62",
  ":040014000020000DBB",
  ":040018003FDF04A41E",
  ":04001C00000004A636",
  ":040020000333024460",
  ":040024000020000DAB",
  ":040028003FDF04644E",
  ":04002C000000046666",
  ":040030004000022466",
  ":040034000000022A9C",
  ":040038000000022A98",
  ":04003C001333014D2C",
  ":00000001FF"
};

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
  
  for (int j = 0; j < 17; j++) {
    uint8_t n[32];
    Serial.println(line[j]);
    int count = lineToNum(n, line[j], 32);
    Serial.print(count);
    Serial.print(":\t");
    for (int i = 0; i < count; i++) {
      Serial.print(n[i], HEX);
      Serial.print(':');
    }
    Serial.println(""); 
  }
}

void loop() 
{
}
