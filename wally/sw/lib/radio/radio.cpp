#include "radio.h"

#define FREQ 915.0
#define SPREADING_FACTOR 12
#define BANDWIDTH 500
#define CODING_RATE 5
#define SYNC_WORD 0x34
#define TX_POWER 22
#define PREAMBLE_LENGTH 20


Radio::Radio() {
    // empty constructor    
}

bool Radio::init(float frequency, int spreadingFactor, int bandwidth, int codingRate, int syncWord){}
    SX1262 radio = new Module(CS_PIN, DIO1_PIN, RST_PIN);
    state = radio.begin(FREQ, SPREADING_FACTOR, BANDWIDTH, CODING_RATE, SYNC_WORD);
}

