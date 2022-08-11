#define BUFFER_LEN  (32)

typedef struct {
  int address;
  int type;
  int data[4];
} Record;

void readLine(char* buffer, int length)
{
  int i = 0;
  while (i < length) {
    while(!Serial.available()) {
      ;
    }
    int c = Serial.read();
    if (c == 0x0A || c == 0x0D) {  // LF or CR
      buffer[i] = '\0';
      break;
    }
    buffer[i] = (char)c;
    i++;
  }
}

/*
 * Retrun: 0: sucess -1: parse error
 */

int parseLine(Record* rec, char* buffer)
{
  char c[5] = {0};
  char *p = buffer;

  // Header
  if (*p++ != ':') {
    return -1;
  }
  
  // Byte count
  c[0] = *p++;
  c[1] = *p++;
  c[2] = '\0';
  long count = strtol(c, NULL, 16);

  // Address
  c[0] = *p++;
  c[1] = *p++;
  c[2] = *p++;
  c[3] = *p++;
  c[4] = '\0';
  rec->address = (int)strtol(c, NULL, 16);

  // Record type
  c[0] = *p++;
  c[1] = *p++;
  c[2] = '\0';
  rec->type = (int)strtol(c, NULL, 16);
  
  // Data
  for (int i = 0; i < 4; i++) {
    c[0] = *p++;
    c[1] = *p++;
    c[2] = '\0';
    rec->data[i] = (int)strtol(c, NULL, 16);
  }

  // Check sum (ignore)

  return 0;
}

void setup()
{
  Serial.begin(9600); 
  while(1) {
    char rxBuffer[BUFFER_LEN] = {0};
    readLine(rxBuffer, BUFFER_LEN);
    Serial.println(rxBuffer);
    
    Record rec;
    int ret = parseLine(&rec, rxBuffer);
    if (ret != 0) {
      Serial.print("Error ");
      Serial.println(ret);
    }
    Serial.print(rec.type, HEX);
    Serial.print(':');
    Serial.print(rec.address, HEX);
    Serial.print(':');

    for (int i = 0; i < 4; i++) {
      Serial.print(rec.data[i], HEX);
      Serial.print(':');
    }
    Serial.println("");
  }
}

void loop() 
{
}
