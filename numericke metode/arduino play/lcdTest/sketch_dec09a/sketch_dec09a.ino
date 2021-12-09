/* Basic Arduino example code for displaying text on 16x2, 20x4 etc. character LCDs. More info: www.www.makerguides.com */

// Include the library:
#include <LiquidCrystal.h>
#include <Servo.h>

Servo testServo;
int positions = 0;

// Create an LCD object. Parameters: (RS, E, D4, D5, D6, D7):
LiquidCrystal lcd = LiquidCrystal(2, 3, 4, 5, 6, 7);
void setup() {
  lcd.begin(16, 2); // set up number of columns and rows
  Serial.begin(9600);
  testServo.attach(10);
  testServo.write(90);
}

void loop() {
//TODO: formatiranje neke prom sa jednostrukom preciznoscu kada primi podatak
  char ulaz;
  int ugao;
//TODO: blutut slanje i primanje podataka sa flater apk
  while(Serial.available()) {
    ulaz = Serial.read();
//    positions = Serial.read();
    lcd.print(ulaz);
    Serial.print(ulaz);
    testServo.write(int(ulaz));

    if(ulaz == '0') {
      lcd.clear();
    }
  }

  //TODO: alternativni dodatak - pomeranje servo motora i prikaz njegovog ugla
}
