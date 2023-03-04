#include <iostream>
#include <fstream>
#include <iomanip>
#include <vector>
#include <cmath>
#include <string>
#include <tuple>

using namespace std;


struct WallyData {
    longitude, lattitude, altitude, time, signal strength, last recieved time, total waited time
};

class LORA {
public:

    WallyData* receive() {
        // Code to receive information (from the rocket)
        int packetSize = LoRa.parsePacket();
        // While loop to parse packets. 
        while (packetSize) {
            // received a packet
            Serial.print("Received packet '");
            String recv = "";
            // read packet
            while (LoRa.available()) {
                recv += (char)LoRa.read();
            }

            Serial.println(recv);

            // print RSSI of packet
            Serial.print("' with RSSI ");
            Serial.println(LoRa.packetRssi());
            // Check if the data is valid - if it is valid, then we can accept it.
            
            // If the data is not valid - send out an error message. 
            
            // Code to send out information to other receivers (that may be out of range)
            
        }
        return nullptr;
    }

};
    