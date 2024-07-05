#include "gps.h"

gps::gps(HardwareSerial& uart) : _uart(uart) {}

void gps::begin(unsigned long baud) {
    _uart.begin(baud);
}

void gps::update() {
    while (_uart.available()) {
        _gps.encode(_uart.read());
    }
}

double gps::getLatitude() {
    return _gps.location.isValid() ? _gps.location.lat() : NAN;
}

double gps::getLongitude() {
    return _gps.location.isValid() ? _gps.location.lng() : NAN;
}

double gps::getAltitude() {
    return _gps.altitude.isValid() ? _gps.altitude.meters() : NAN;
}

double gps::getSpeed() {
    return _gps.speed.isValid() ? _gps.speed.kmph() : NAN;
}

String gps::getDate() {
    if (_gps.date.isValid()) {
        char date[11];
        sprintf(date, "%02d/%02d/%02d", _gps.date.day(), _gps.date.month(), _gps.date.year());
        return String(date);
    }
    return String("");
}

String gps::getTime() {
    if (_gps.time.isValid()) {
        char time[9];
        sprintf(time, "%02d:%02d:%02d", _gps.time.hour(), _gps.time.minute(), _gps.time.second());
        return String(time);
    }
    return String("");
}

int gps::getAge() {
    return _gps.location.age();
}

int gps::getSatellites() {
    return _gps.satellites.value();
}

int gps::getHdop() {
    return _gps.hdop.value();
}

double gps::getCourse() {
    return _gps.course.isValid() ? _gps.course.deg() : NAN;
}

GPSData gps::getData() {
    GPSData data;
    data.latitude = getLatitude();
    data.longitude = getLongitude();
    data.altitude = getAltitude();
    data.speed = getSpeed();
    data.date = getDate();
    data.time = getTime();
    data.age = getAge();
    data.satellites = getSatellites();
    data.hdop = getHdop();
    data.course = getCourse();
    return data;
}

void gps::smartDelay(unsigned long ms)
{
  unsigned long start = millis();
  do 
  {
    while (_uart.available())
      _gps.encode(_uart.read());
  } while (millis() - start < ms);
}