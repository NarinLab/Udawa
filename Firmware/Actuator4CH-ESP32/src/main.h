#ifndef main_h
#define main_h

#include <libudawa.h>

const char* settingsPath = "/settings.json";
struct Settings
{
    uint8_t dutyCycle[4];
    long dutyRange[4];
    uint8_t dutyCycleFailSafe[4];
    long dutyRangeFailSafe[4];
    uint8_t relayPin[4];
    long lastConnected;
    bool ON;
};

RPC_Response processSetConfig(const RPC_Data &data);
RPC_Response processSetSettings(const RPC_Data &data);
void loadSettings();
void saveSettings();

#endif