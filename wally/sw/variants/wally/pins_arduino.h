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
static const uint8_t RAD_RST  = 40;
static const uint8_t RAD_DIO1 = 42;
static const uint8_t RAD_DIO2 = 2;
static const uint8_t RAD_DIO3 = 1;
static const uint8_t RAD_RXEN  = 35;
static const uint8_t RAD_TXEN  = 41;
static const uint8_t RAD_BUSY = 48;

// SPI defaults (for compatibility with SPI lib)
static const uint8_t SCK  = RAD_CLK;
static const uint8_t MISO = RAD_DO;
static const uint8_t MOSI = RAD_DI;
static const uint8_t SS   = RAD_CS;

// I2C defaults (for compatibility with Wire lib)
static const uint8_t SDA = SDA0;
static const uint8_t SCL = SCL0;

// GPIO
static const uint8_t A0 = 8;
static const uint8_t A1 = 10;
static const uint8_t A2 = 9;
static const uint8_t A3 = 6;
static const uint8_t A4 = 16;

#define LED_R    8
#define LED_Y   10
#define LED_G    9

// VSENSE
static const uint8_t VSENSE = 7;

// PPS
static const uint8_t PPS = 15;

#endif /* Pins_Arduino_h */
