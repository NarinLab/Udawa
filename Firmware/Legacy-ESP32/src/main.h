/**
 * UDAWA - Universal Digital Agriculture Watering Assistant
 * Firmware for Legacy UDAWA Board
 * Licensed under aGPLv3
 * Researched and developed by PRITA Research Group & Narin Laboratory
 * prita.undiknas.ac.id | narin.co.id
**/
#ifndef main_h
#define main_h

#include <libudawa.h>
#include <TaskManagerIO.h>

#define CURRENT_FIRMWARE_TITLE "UDAWA-Legacy"
#define CURRENT_FIRMWARE_VERSION "0.0.1"

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

    uint8_t dutyCycle[4];
    unsigned long dutyRange[4];
    uint8_t dutyCycleFailSafe[4];
    unsigned long dutyRangeFailSafe[4];
    uint8_t relayPin[4];
    bool ON;
    bool dutyState[4];
    unsigned long dutyCounter[4];
};

callbackResponse processSaveConfig(const callbackData &data);
callbackResponse processSaveSettings(const callbackData &data);
callbackResponse processSharedAttributesUpdate(const callbackData &data);
callbackResponse processSyncClientAttributes(const callbackData &data);

void loadSettings();
void saveSettings();
void publishWater();
void syncClientAttributes();
void publishDeviceTelemetry();
void dutyRuntime();


#endif