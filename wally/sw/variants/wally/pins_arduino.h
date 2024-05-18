#ifndef Pins_Arduino_h
#define Pins_Arduino_h

#include <stdint.h>
#include "soc/soc_caps.h"

#define USB_VID            0x239A
#define USB_PID            0x8145
#define USB_MANUFACTURER   "ICLR"
#define USB_PRODUCT        "WALLY"
#define USB_SERIAL         ""   // Empty string for MAC adddress

#define PIN_BUTTON1     0  // BOOT0 switch

// UART
static const uint8_t TX0 = 43;
static const uint8_t RX0 = 44;

static const uint8_t TX1 = 17;
static const uint8_t RX1 = 18;

// I2C
static const uint8_t SDA0 = 47;
static const uint8_t SCL0 = 21;

static const uint8_t SDA1 = 5;
static const uint8_t SCL1 = 4;

// SD
static const uint8_t SD_CS   = 14;
static const uint8_t SD_DO   = 42;
static const uint8_t SD_CLK  = 39;
static const uint8_t SD_DI   = 21;

// Radio
static const uint8_t RAD_CS   = 39;
static const uint8_t RAD_DO   = 37;
static const uint8_t RAD_CLK  = 36;
static const uint8_t RAD_DI   = 38;

// LEDs
static const uint8_t ERR_LED = 8;
static const uint8_t RAD_LED = 10;
static const uint8_t LTE_LED = 9;

// Battery
static const uint8_t BAT_ADC = 7;

// PPS
static const uint8_t PPS = 15;

#endif /* Pins_Arduino_h */
