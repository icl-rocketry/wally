#include "esp32-hal-gpio.h"
#include "pins_arduino.h"

extern "C" {

// Initialize variant/board, called before setup()
void initVariant(void) {

  // initialise button pin as input
  pinMode(PIN_BUTTON1, INPUT_PULLUP);  // Boot button

  // SD Card Pins
  pinMode(SD_CS, OUTPUT);  // SD card chip select (CS), usually starts HIGH
  digitalWrite(SD_CS, HIGH); 
  pinMode(SD_DO, OUTPUT);  
  pinMode(SD_CLK, OUTPUT);
  pinMode(SD_DI, INPUT);

  // Radio 
  pinMode(RAD_CS, OUTPUT); 
  digitalWrite(RAD_CS, HIGH); 
  pinMode(RAD_DO, OUTPUT); 
  pinMode(RAD_CLK, OUTPUT); 
  pinMode(RAD_DI, INPUT);

  // I2C Pins
  // pullups are on the pcb so don't need to set them here 
  pinMode(SDA0, INPUT);
  pinMode(SCL0, INPUT);

  pinMode(SDA1, INPUT);
  pinMode(SCL1, INPUT);

  // initialise LED pins as outputs
  pinMode(LED_R, OUTPUT);
  pinMode(LED_Y, OUTPUT);
  pinMode(LED_G, OUTPUT);

  // PPS
  pinMode(PPS, INPUT_PULLDOWN);

  // Configure ADC to read battery voltage
  // get battery voltage
  analogSetPinAttenuation(VSENSE, ADC_0db); // 0 - 0.9V range (after voltage divider)
  pinMode(VSENSE, INPUT);
}

} // extern "C"


