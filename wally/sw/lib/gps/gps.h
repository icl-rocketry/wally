#ifndef GPS_H
#define GPS_H

#include <TinyGPS++.h>
#include <HardwareSerial.h>

struct GPSData {
    double latitude;
    double longitude;
    double altitude;
    double speed;
    String date;
    String time;
    int age;
    int satellites;
    int hdop;
    double course;
};

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
    GPSData getData();
    void smartDelay(unsigned long ms);

private:
    HardwareSerial& _uart;
    TinyGPSPlus _gps;
};

#endif // GPS_H