#ifndef RADIO_H
#define RADIO_H

#include <Arduino.h>
#include <RadioLib.h>

// Define your module specifics
#define CS_PIN  10
#define DIO1_PIN 2
#define RST_PIN 9
#define FREQUENCY 915.0

class Radio {
public:
    
    Radio(); // Constructor
    bool init(float frequency, int spreadingFactor, int bandwidth, int codingRate, int syncWord); // Initialize the radio
    void transmit(const uint8_t* data, size_t length); // transmit byte array
    size_t receive(uint8_t* buffer, size_t bufferSize);

private:
    SX1262 radio;
    int state;

};

#endif // LORARADIO_H 
