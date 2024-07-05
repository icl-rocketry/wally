#ifndef GPS_H
#define GPS_H

#include <TinyGPS++.h>
#include <HardwareSerial.h>

class gps {
public:
    gps(HardwareSerial& uart);
    void begin(unsigned long baud);
    void update();
    double getLatitude();
    double getLongitude();
    double getAltitude();
    double getSpeed();
    String getDate();
    String getTime();
    int getAge();
    int getSatellites();
    int getHdop();
    double getCourse();

private:
    HardwareSerial& _uart;
    TinyGPSPlus _gps;
};

#endif // GPS_H