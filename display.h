#pragma once

#include <iostream> // TODO: Remove this
struct ThingIWantToDisplay {
    float lastReceivedTime, signalStrength, latitude, longitude, altitude;
};

class Display {
    public:
        void display(const ThingIWantToDisplay& thing) {
            std::cout << "Last Received Time: " << thing.lastReceivedTime
                      << "Latitude: "           << thing.latitude 
                      << "Longitude: "          << thing.longitude 
                      << "Altitude: "           << thing.altitude 
                      << "Temperature: "        << thing.signalStrength 
                      << std::endl; 
        }
};
