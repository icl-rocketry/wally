#pragma once

#include <cstdint>

// Stuff wally will send us
struct WallyData {
    uint32_t time;
    float longitude, latitude, altitude;
    float signal_strength;
    uint32_t total_waited_time;

    // Number of times this was forwarded
    uint32_t n_hops; // Ik this is too big but I cba with struct packing rules
    uint32_t checksum; // Used to check if the packet was corrupted (calculated by xoring all the 4 bytes together)

    bool parse_packet(const char* buffer) {
        size_t length = sizeof(WallyData);

        time = parse_uint32_t(buffer + 0);
        longitude = parse_float(buffer + 4);
        latitude = parse_float(buffer + 8);
        altitude = parse_float(buffer + 12);
        signal_strength = parse_float(buffer + 16);
        total_waited_time = parse_uint32_t(buffer + 20);
        n_hops = parse_uint32_t(buffer + 24);
        checksum = parse_uint32_t(buffer + 28);

        return checksum_ok();
    }

    // Returns true if the packet's checksum is valid
    bool checksum_ok() {
        uint32_t result = time;
        result ^= *reinterpret_cast<const uint32_t*>(&longitude);
        result ^= *reinterpret_cast<const uint32_t*>(&latitude);
        result ^= *reinterpret_cast<const uint32_t*>(&altitude);
        result ^= *reinterpret_cast<const uint32_t*>(&signal_strength);
        result ^= total_waited_time;
        result ^= n_hops;
        return result == checksum;
    }

private:
    uint32_t parse_uint32_t(const char* buffer) {
        uint32_t result = static_cast<uint32_t>(*reinterpret_cast<const uint8_t*>(buffer));
        result |= static_cast<uint32_t>(*reinterpret_cast<const uint8_t*>(buffer + 1)) << 8;
        result |= static_cast<uint32_t>(*reinterpret_cast<const uint8_t*>(buffer + 2)) << 16;
        result |= static_cast<uint32_t>(*reinterpret_cast<const uint8_t*>(buffer + 3)) << 24;
        return result;
    }

    float parse_float(const char* buffer) {
        float result;
        std::memcpy(&result, buffer, sizeof(result));
        return result;
    }
};
