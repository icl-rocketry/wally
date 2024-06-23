#include "radio.h"
#include <RadioLib.h>
#include <Arduino.h>
#include <SPI.h>

#define FREQ 915.0
#define SPREADING_FACTOR 12
#define BANDWIDTH 125
#define CODING_RATE 5
#define SYNC_WORD 0x34
#define TX_POWER 22
#define PREAMBLE_LENGTH 20


int Radio::init(SPIClass rad_spi, float frequency, int spreadingFactor, int bandwidth, int codingRate, int syncWord){
    mod = new Module(RAD_CS, RAD_DIO1, RAD_RST, RAD_BUSY, rad_spi);
    radio = SX1262(mod);

    state = radio.begin(FREQ, SPREADING_FACTOR, BANDWIDTH, CODING_RATE, SYNC_WORD);

    return state;
}

