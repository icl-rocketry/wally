#include <Arduino.h>
#include <Wire.h>



// put function declarations here:
float getVoltageRaw();
float getTrueVoltage();


void setup() {

  Serial.begin(9600);

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

  TwoWire i2c0 = TwoWire(0);
  TwoWire i2c1 = TwoWire(1);

  i2c0.begin(SDA0, SCL0, 400000);
  i2c1.begin(SDA1, SCL1, 100000);

  byte error, address;
  int nDevices;

  Serial.println("Scanning...");
  for (address = 1; address < 127; address++) {
    i2c0.beginTransmission(address);
    error = i2c0.endTransmission();
    if (error == 0) {
      Serial.print("I2C device found at address 0x");
      if (address < 16) {
        Serial.print("0");
      }
      Serial.println(address, HEX);
      nDevices++;
    }
    else if (error == 4) {
      Serial.print("Unknown error at address 0x");
      if (address < 16) {
        Serial.print("0");
      }
      Serial.println(address, HEX);
    }
  }

  Serial.println("Done scanning.");
  Serial.println("Supply voltage: " + String(supplyVoltage) + "mV");
}

void loop() {
  // put your main code here, to run repeatedly:
}

// put function definitions here:

float getVoltageRaw() {
  return analogReadMilliVolts(VSENSE);
}

// avoid using this in a loop, it's unnecessarily slow
// we can scale the raw value in post processing
float getTrueVoltage() {
  float raw = getVoltageRaw();
  return (raw * (100 + 20))/20; // voltage divider
}