#ifndef LTE_H
#define LTE_H

#define TINY_GSM_MODEM_SIM7600
#define TINY_GSM_USE_GPRS true
#define TINY_GSM_USE_WIFI false

#include <Arduino.h>
#include <TinyGsm.h>
#include <TinyGsmClient.h>
#include <ArduinoHttpClient.h>


class LTE {
public:
    LTE(Stream &serialAT);

    bool init();
    int sendDataPacket(const String &data);
    void getGSMLocation(float &lat, float &lon, float &acc);
    void getGPSLocation(float &lat, float &lon, float &acc, float &speed, float &alt, int &vsat, int &usat);
    void getGPSTime(int &hour, int &min, int &sec);

private:
    static const char APN[]; 
    static const char USER[];
    static const char PASS[];
    static const char SERVER[]; 
    static const int PORT;

    TinyGsm modem;
    TinyGsmClient client;
    HttpClient http;

    float gsm_lat = 0;
    float gsm_lon = 0;
    float gsm_acc= 0;

    float gps_lat = 0;
    float gps_lon = 0;
    float gps_acc = 0;
    float gps_speed = 0;
    float gps_alt = 0;
    int gps_vsat = 0;
    int gps_usat = 0;
    int gps_hour = 0;
    int gps_min = 0;
    int gps_sec = 0;


};

#endif