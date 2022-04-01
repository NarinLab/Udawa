/**
 * UDAWA - Universal Digital Agriculture Watering Assistant
 * Firmware for Vanilla UDAWA Board (starter firmware)
 * Licensed under aGPLv3
 * Researched and developed by PRITA Research Group & Narin Laboratory
 * prita.undiknas.ac.id | narin.co.id
**/
#ifndef main_h
#define main_h

#define DOCSIZE 1500
#include <libudawa.h>
#include <TaskManagerIO.h>

#define CURRENT_FIRMWARE_TITLE "UDAWA-Vanilla"
#define CURRENT_FIRMWARE_VERSION "0.0.1"

const char* settingsPath = "/settings.json";

struct Settings
{
    unsigned long lastUpdated;
    bool fTeleDev;
    unsigned long publishInterval;
    unsigned long myTaskInterval;
};

callbackResponse processSaveConfig(const callbackData &data);
callbackResponse processSaveSettings(const callbackData &data);
callbackResponse processSharedAttributesUpdate(const callbackData &data);
callbackResponse processSyncClientAttributes(const callbackData &data);
callbackResponse processReboot(const callbackData &data);

void loadSettings();
void saveSettings();
void syncClientAttributes();
void publishDeviceTelemetry();
void myTask();

#endif