#include "radio.h"


// put function declarations here:
float getVoltageRaw();
float getTrueVoltage();
SPIClass rad_spi(HSPI);


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

  Serial.begin(115200);
  
  rad_spi.begin(RAD_CLK, RAD_DI, RAD_DO, RAD_CS);
  

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