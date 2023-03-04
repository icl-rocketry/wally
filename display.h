#include <iostream>
#include <fstream>
#include <iomanip>
#include <vector>
#include <cmath>
#include <string>
#include <tuple>

using namespace std;

struct ThingIWantToDisplay {
    // things u wanna display
    float lastReceivedTime, signalStrength, latitude, longitude, altitude;
    
};

class Display {
    public:
        void display(const ThingIWantToDisplay& thing) {
            cout << "Last Received Time: " << thing.lastReceivedTime << "Latitude: " << thing.latitude <<
                    "Longitude: " << thing.longitude << "Altitude: " << thing.altitude <<
                    "Temperature: " << thing.signalStrength << endl; 
        }
};
