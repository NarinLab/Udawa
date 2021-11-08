/**
 * UDAWA - Universal Digital Agriculture Watering Assistant
 * Firmware for Water Sensor UDAWA Board (Damodar)
 * Licensed under aGPLv3
 * Researched and developed by PRITA Research Group & Narin Laboratory
 * prita.undiknas.ac.id | narin.co.id
**/
#include "main.h"

uint16_t taskIdPublishWater;
Water water;
Settings mySettings;
const size_t callbacks_size = 2;
RPC_Callback callbacks[callbacks_size] = {
  { "setConfig", processSetConfig },
  { "setSettings", processSetSettings }
};

void setup()
{
  startup();
  loadSettings();
  syncConfigCoMCU();
  taskIdPublishWater = taskManager.scheduleFixedRate(mySettings.publishInterval | 30000, [] {
    if(tb.connected())
    {
      publishWater();
    }
  });
}

void loop()
{
  udawa();
  taskManager.runLoop();

  if(FLAG_IOT_RPC_SUBSCRIBE)
  {
    FLAG_IOT_RPC_SUBSCRIBE = false;
    if (tb.connected() && !tb.RPC_Subscribe(callbacks, callbacks_size))
    {
      sprintf_P(logBuff, PSTR("Failed to subscribe RPC Callback!"));
      recordLog(4, PSTR(__FILE__), __LINE__, PSTR(__func__));
      FLAG_IOT_RPC_SUBSCRIBE = true;
    }
    else
    {
      sprintf_P(logBuff, PSTR("RPC Callback subscribed successfuly!"));
      recordLog(4, PSTR(__FILE__), __LINE__, PSTR(__func__));
      tb.Firmware_OTA_Subscribe();
    }

    if (tb.Firmware_Update(CURRENT_FIRMWARE_TITLE, CURRENT_FIRMWARE_VERSION))
    {
      sprintf_P(logBuff, PSTR("Firmware update complete. Rebooting now..."));
      recordLog(4, PSTR(__FILE__), __LINE__, PSTR(__func__));
    }
    else
    {
      sprintf_P(logBuff, PSTR("Firmware is up to date."));
      recordLog(4, PSTR(__FILE__), __LINE__, PSTR(__func__));
    }
    tb.Firmware_OTA_Unsubscribe();
  }
}

void publishWater()
{
  StaticJsonDocument<DOCSIZE> doc;
  doc["method"] = "getWaterTemp";
  serialWriteToCoMcu(doc, 1);
  if(doc["params"]["celcius"] != nullptr)
  {
    water.celcius = doc["params"]["celcius"];
    tb.sendTelemetryFloat("WaterTemp", water.celcius);
  }

  doc.clear();

  doc["method"] = "getWaterEC";
  serialWriteToCoMcu(doc, 1);
  if(doc["params"]["waterEC"] != nullptr)
  {
    water.ec = doc["params"]["waterEC"];
    water.tds = doc["params"]["waterPPM"];
    tb.sendTelemetryFloat("WaterEC", water.ec);
    tb.sendTelemetryFloat("WaterTDS", water.tds);
  }
}

void loadSettings()
{
  StaticJsonDocument<DOCSIZE> doc;
  readSettings(doc, settingsPath);

  sprintf_P(logBuff, PSTR("Loaded settings:"));
  recordLog(4, PSTR(__FILE__), __LINE__, PSTR(__func__));

  serializeJsonPretty(doc, Serial);

  if(doc["publishInterval"] != nullptr)
  {
    mySettings.publishInterval = doc["publishInterval"].as<unsigned long>();
  }
  else
  {
    mySettings.publishInterval = 30000;
  }
}

void saveSettings()
{
  StaticJsonDocument<DOCSIZE> doc;

  doc["publishInterval"] = mySettings.publishInterval;

  writeSettings(doc, settingsPath);

  sprintf_P(logBuff, PSTR("Saved settings:"));
  recordLog(4, PSTR(__FILE__), __LINE__, PSTR(__func__));

  serializeJsonPretty(doc, Serial);
}

RPC_Response processSetConfig(const RPC_Data &data)
{
  if(data["model"] != nullptr){strlcpy(config.model, data["model"].as<const char*>(), sizeof(config.model));}
  if(data["group"] != nullptr){strlcpy(config.group, data["group"].as<const char*>(), sizeof(config.group));}
  if(data["broker"] != nullptr){strlcpy(config.broker, data["broker"].as<const char*>(), sizeof(config.broker));}
  if(data["port"] != nullptr){data["port"].as<uint16_t>();}
  if(data["wssid"] != nullptr){strlcpy(config.wssid, data["wssid"].as<const char*>(), sizeof(config.wssid));}
  if(data["wpass"] != nullptr){strlcpy(config.wpass, data["wpass"].as<const char*>(), sizeof(config.wpass));}
  if(data["upass"] != nullptr){strlcpy(config.upass, data["upass"].as<const char*>(), sizeof(config.upass));}
  if(data["provisionDeviceKey"] != nullptr){strlcpy(config.provisionDeviceKey, data["provisionDeviceKey"].as<const char*>(), sizeof(config.provisionDeviceKey));}
  if(data["provisionDeviceSecret"] != nullptr){strlcpy(config.provisionDeviceSecret, data["provisionDeviceSecret"].as<const char*>(), sizeof(config.provisionDeviceSecret));}
  if(data["logLev"] != nullptr){data["logLev"].as<uint8_t>();}

  configSave();
  return RPC_Response("setConfigModel", 1);
}

RPC_Response processSetSettings(const RPC_Data &data)
{
  mySettings.publishInterval = data["publishInterval"].as<unsigned long>();

  saveSettings();
  loadSettings();

  mySettings.lastUpdated = millis();
  return RPC_Response("processSetSettings", 1);
}