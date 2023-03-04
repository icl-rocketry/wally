#include <LoRa.h>

using namespace std;

#define WALLY_DATA_SIZE 28

// Stuff wally will send us
struct WallyData {
    uint32_t time;
    float longitude, latitude, altitude;
    float signal_strength;
    uint32_t total_waited_time;
    uint8_t number_received;
};
// TODO add invalid data fields

class LORA {
public:

    WallyData* receive() {
        // Code to receive information (from the rocket)
        int packetSize = LoRa.parsePacket();
        while (packetSize != WALLY_DATA_SIZE) {
            packetSize = LoRa.parsePacket();
        }
        
        // received a packet
        Serial.print("Received packet '");
        String recv = "";
        // read packet
        while (LoRa.available()) {
            recv += (char)LoRa.read();
        }

        return packet;
    }

    void send(WallyData) {
        loRa.sendPacket();
    } 

};
    