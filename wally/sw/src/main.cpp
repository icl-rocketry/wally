#include <Arduino.h>

/**
// put function declarations here:
int myFunction(int, int);

void setup() {
  // put your setup code here, to run once:
  float supplyVoltage = getTrueVoltage();
  if (supplyVoltage < 3.84) {
    digitalWrite(LED_R, HIGH);
    digitalWrite(LED_Y, LOW);
    digitalWrite(LED_G, LOW);
  }
  else if (supplyVoltage < 4.02) {
    digitalWrite(LED_R, HIGH);
    digitalWrite(LED_Y, HIGH);
    digitalWrite(LED_G, LOW);
  }
  else {
    digitalWrite(LED_R, HIGH);
    digitalWrite(LED_Y, HIGH);
    digitalWrite(LED_G, HIGH);
  }
}

void loop() {
  // put your main code here, to run repeatedly:
}

// put function definitions here:
int myFunction(int x, int y) {
  return x + y;
}

float getVoltageRaw() {
  return analogReadMilliVolts(VSENSE);
}

float getTrueVoltage() {
  float raw = getVoltageRaw();
  return (raw * (100 + 20))/20; // voltage divider
}

*/