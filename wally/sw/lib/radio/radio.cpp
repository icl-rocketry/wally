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

// save transmission state between loops
int transmissionState = RADIOLIB_ERR_NONE;

// flag to indicate that a packet was sent
volatile bool transmittedFlag = false;



int Radio::init(SPIClass rad_spi, float frequency, int spreadingFactor, int bandwidth, int codingRate, int syncWord){
    mod = new Module(RAD_CS, RAD_DIO1, RAD_RST, RAD_BUSY, rad_spi);
    radio = SX1262(mod);

    state = radio.begin(FREQ, SPREADING_FACTOR, BANDWIDTH, CODING_RATE, SYNC_WORD);

    if (state == RADIOLIB_ERR_NONE) {
        Serial.println(F("success!"));
    } else {
        Serial.print(F("failed, code "));
        Serial.println(state);
        
    }

    return state;
}

void Radio::setFlag(void) {
  // we sent a packet, set the flag
  transmittedFlag = true;
}

void Radio::transmit(uint8_t* data, size_t length){
    // radio.transmit(data, length);

    if (transmittedFlag == true) {
        // we sent a packet, reset the flag
        transmittedFlag = false;

        state = radio.startTransmit(data, length);
    }
    
}
