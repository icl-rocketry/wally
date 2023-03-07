#pragma once
#include <packet.h>
#include <LoRa.h>

class LORA {
public:
    LORA() {};

    bool receive(WallyData& packet) {
        wait_for_packet();
        fill_buffer();
        return packet.parse_packet(buffer_);
    }

    void send(WallyData) {
        // loRa.sendPacket();
    } 

private:
    void wait_for_packet() {
        // int packetSize = LoRa.parsePacket();
        // while (packetSize != sizeof(WallyData)) {
        //     packetSize = LoRa.parsePacket();
        // }
    }

    // Read bytes into the buffer_ variable
    void fill_buffer() {

    }

    char buffer_[sizeof(WallyData)];
};
    