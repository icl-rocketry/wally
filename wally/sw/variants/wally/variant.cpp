/* 
 * The MIT License (MIT)
 *
 * Copyright (c) 2021 Ha Thach (tinyusb.org) for Adafruit Industries
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */


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

  // initialise LED pins as outputs
  pinMode(ERR_LED, OUTPUT);
  pinMode(RAD_LED, OUTPUT);
  pinMode(LTE_LED, OUTPUT);

  // Configure ADC to read battery voltage
  // get battery voltage
  analogSetAttenuation(ADC_0db); // 0- 0.9V range (after voltage divider)
  pinMode(BAT_ADC, INPUT);

  // turn on error LED
  digitalWrite(ERR_LED, HIGH);

  // turn on LEDs based on battery voltage
  float battery_voltage = analogReadMilliVolts(BAT_ADC);

  if (battery_voltage < 650) {
    digitalWrite(ERR_LED, HIGH);
    digitalWrite(RAD_LED, LOW);
    digitalWrite(LTE_LED, LOW);
    } 
  else if (battery_voltage < 700) {
    digitalWrite(ERR_LED, HIGH);
    digitalWrite(RAD_LED, HIGH);
    digitalWrite(LTE_LED, LOW);
    } 
  else {
    digitalWrite(ERR_LED, HIGH);
    digitalWrite(RAD_LED, HIGH);
    digitalWrite(LTE_LED, HIGH);
    }
  }

  

} // extern "C"


