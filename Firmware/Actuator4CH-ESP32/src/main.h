/**
 * UDAWA - Universal Digital Agriculture Watering Assistant
 * Firmware for Actuator 4Ch UDAWA Board (Gadadar)
 * Licensed under aGPLv3
 * Researched and developed by PRITA Research Group & Narin Laboratory
 * prita.undiknas.ac.id | narin.co.id
**/
#ifndef main_h
#define main_h

#include <libudawa.h>


#define CURRENT_FIRMWARE_TITLE "UDAWA-Gadadar"
#define CURRENT_FIRMWARE_VERSION "0.0.3"

const char* settingsPath = "/settings.json";
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
};

RPC_Response processSetConfig(const RPC_Data &data);
RPC_Response processSetSettings(const RPC_Data &data);
void processSharedAttributesUpdate(const Shared_Attribute_Data &data);
void loadSettings();
void saveSettings();
void dutyRuntime();

#endif