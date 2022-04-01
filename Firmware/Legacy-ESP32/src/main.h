/**
 * UDAWA - Universal Digital Agriculture Watering Assistant
 * Firmware for Legacy UDAWA Board
 * Licensed under aGPLv3
 * Researched and developed by PRITA Research Group & Narin Laboratory
 * prita.undiknas.ac.id | narin.co.id
**/
#ifndef main_h
#define main_h

#define DOCSIZE 1500
#include <libudawa.h>
#include <TaskManagerIO.h>

#define CURRENT_FIRMWARE_TITLE "UDAWA-Legacy"
#define CURRENT_FIRMWARE_VERSION "0.0.2"

const char* settingsPath = "/settings.json";

struct Water
{
    float celcius;
    float tds;
    float ec;
};
struct Settings
{
    uint8_t dutyCycle[4];
    unsigned long dutyRange[4];
    uint8_t dutyCycleFailSafe[4];
    unsigned long dutyRangeFailSafe[4];
    uint8_t relayPin[4];
    unsigned long lastUpdated;
    bool ON;
    bool dutyState[4];
    unsigned long dutyCounter[4];
    bool fTeleDev;
    unsigned long publishInterval;
};

callbackResponse processSaveConfig(const callbackData &data);
callbackResponse processSaveSettings(const callbackData &data);
callbackResponse processSharedAttributesUpdate(const callbackData &data);
callbackResponse processSyncClientAttributes(const callbackData &data);
callbackResponse processReboot(const callbackData &data);
callbackResponse processConfigCoMCUSave(const callbackData &data);
callbackResponse processSyncConfigCoMCU(const callbackData &data);

void loadSettings();
void saveSettings();
void dutyRuntime();
void syncClientAttributes();
void publishDeviceTelemetry();
void publishWater();


#endif