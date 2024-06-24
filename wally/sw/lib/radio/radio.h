#ifndef RADIO_H
#define RADIO_H

#include <Arduino.h>
#include <RadioLib.h>
#include <SPI.h>


class Radio {
public:
    
    Radio(); // Constructor
    int init(SPIClass rad_spi, float frequency, int spreadingFactor, int bandwidth, int codingRate, int syncWord); // Initialize the radio
    void transmit(uint8_t* data, size_t length); // transmit byte array
    size_t receive(uint8_t* buffer, size_t bufferSize);

private:
    Module* mod;
    SX1262 radio;
    int state;
    int transmissionState;
    volatile bool transmittedFlag;
    void setFlag(void);
};

#endif // LORARADIO_H 
