/**
 * UDAWA - Universal Digital Agriculture Watering Assistant
 * Firmware for Water Sensor UDAWA Board (Damodar)
 * Licensed under aGPLv3
 * Researched and developed by PRITA Research Group & Narin Laboratory
 * prita.undiknas.ac.id | narin.co.id
**/
#ifndef main_h
#define main_h

#include <libudawa.h>
#include <TaskManagerIO.h>

#define CURRENT_FIRMWARE_TITLE "UDAWA-Damodar"
#define CURRENT_FIRMWARE_VERSION "0.0.4"

const char* settingsPath = "/settings.json";

struct Water
{
    float celcius;
    float tds;
    float ec;
};
struct Settings
{
    unsigned long publishInterval;
    unsigned long lastUpdated;
    bool fTeleDev;
};

callbackResponse processSaveConfig(const callbackData &data);
callbackResponse processSaveSettings(const callbackData &data);
callbackResponse processSharedAttributesUpdate(const callbackData &data);
callbackResponse processSyncClientAttributes(const callbackData &data);
callbackResponse processConfigCoMCUSave(const callbackData &data);
callbackResponse processSyncConfigCoMCU(const callbackData &data);
callbackResponse processReboot(const callbackData &data);

void loadSettings();
void saveSettings();
void publishWater();
void syncClientAttributes();
void publishDeviceTelemetry();


#endif