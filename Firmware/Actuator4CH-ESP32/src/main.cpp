/**
 * UDAWA - Universal Digital Agriculture Watering Assistant
 * Firmware for Actuator 4Ch UDAWA Board
 * Licensed under aGPLv3
 * Researched and developed by PRITA Research Group & Narin Laboratory
 * prita.undiknas.ac.id | narin.co.id
**/
#include "main.h"

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
}

void loop()
{
  udawa();

  if(FLAG_IOT_RPC_SUBSCRIBE)
  {
    FLAG_IOT_RPC_SUBSCRIBE = false;
    if (!tb.RPC_Subscribe(callbacks, callbacks_size))
    {
      sprintf_P(logBuff, PSTR("Failed to subscribe RPC Callback!"));
      recordLog(4, PSTR(__FILE__), __LINE__, PSTR(__func__));
    }
    else
    {
      sprintf_P(logBuff, PSTR("RPC Callback subscribed successfuly!"));
      recordLog(4, PSTR(__FILE__), __LINE__, PSTR(__func__));
      mySettings.lastConnected = millis();
    }
  }
}

void loadSettings()
{
  StaticJsonDocument<DOCSIZE> doc;
  readSettings(doc, settingsPath);

  sprintf_P(logBuff, PSTR("Loaded settings:"));
  recordLog(4, PSTR(__FILE__), __LINE__, PSTR(__func__));

  serializeJsonPretty(doc, Serial);

  if(doc["dutyCycle"] != nullptr)
  {
    uint8_t index = 0;
    for(JsonVariant v : doc["dutyCycle"].as<JsonArray>())
    {
        mySettings.dutyCycle[index] = v.as<uint8_t>();
        index++;
    }
  }
  else
  {
    for(uint8_t i = 0; i < countof(mySettings.dutyCycle); i++)
    {
        mySettings.dutyCycle[i] = 0;
    }
  }

  if(doc["dutyRange"] != nullptr)
  {
    uint8_t index = 0;
    for(JsonVariant v : doc["dutyRange"].as<JsonArray>())
    {
        mySettings.dutyRange[index] = v.as<long>();
        index++;
    }
  }
  else
  {
    for(uint8_t i = 0; i < countof(mySettings.dutyRange); i++)
    {
        mySettings.dutyRange[i] = 0;
    }
  }

  if(doc["dutyCycleFailSafe"] != nullptr)
  {
    uint8_t index = 0;
    for(JsonVariant v : doc["dutyCycleFailSafe"].as<JsonArray>())
    {
        mySettings.dutyCycleFailSafe[index] = v.as<uint8_t>();
        index++;
    }
  }
  else
  {
    for(uint8_t i = 0; i < countof(mySettings.dutyCycleFailSafe); i++)
    {
        mySettings.dutyCycleFailSafe[i] = 0;
    }
  }

  if(doc["dutyRangeFailSafe"] != nullptr)
  {
    uint8_t index = 0;
    for(JsonVariant v : doc["dutyRangeFailSafe"].as<JsonArray>())
    {
        mySettings.dutyRangeFailSafe[index] = v.as<long>();
        index++;
    }
  }
  else
  {
    for(uint8_t i = 0; i < countof(mySettings.dutyRangeFailSafe); i++)
    {
        mySettings.dutyRangeFailSafe[i] = 0;
    }
  }

  if(doc["relayPin"] != nullptr)
  {
    uint8_t index = 0;
    for(JsonVariant v : doc["relayPin"].as<JsonArray>())
    {
        mySettings.relayPin[index] = v.as<long>();
        index++;
    }
  }
  else
  {
    for(uint8_t i = 0; i < countof(mySettings.relayPin); i++)
    {
        mySettings.relayPin[i] = 0;
    }
  }

  if(doc["ON"] != nullptr)
  {
    mySettings.ON = doc["ON"].as<bool>();
  }
  else
  {
    mySettings.ON = 1;
  }
}

void saveSettings()
{
  StaticJsonDocument<DOCSIZE> doc;

  JsonArray dutyCycle = doc.createNestedArray("dutyCycle");
  for(uint8_t i=0; i<countof(mySettings.dutyCycle); i++)
  {
    dutyCycle.add(mySettings.dutyCycle[i]);
  }

  JsonArray dutyRange = doc.createNestedArray("dutyRange");
  for(uint8_t i=0; i<countof(mySettings.dutyRange); i++)
  {
    dutyRange.add(mySettings.dutyRange[i]);
  }

  JsonArray dutyCycleFailSafe = doc.createNestedArray("dutyCycleFailSafe");
  for(uint8_t i=0; i<countof(mySettings.dutyCycleFailSafe); i++)
  {
    dutyCycleFailSafe.add(mySettings.dutyCycleFailSafe[i]);
  }

  JsonArray dutyRangeFailSafe = doc.createNestedArray("dutyRangeFailSafe");
  for(uint8_t i=0; i<countof(mySettings.dutyRangeFailSafe); i++)
  {
    dutyRangeFailSafe.add(mySettings.dutyRangeFailSafe[i]);
  }

  JsonArray relayPin = doc.createNestedArray("relayPin");
  for(uint8_t i=0; i<countof(mySettings.relayPin); i++)
  {
    relayPin.add(mySettings.relayPin[i]);
  }

  doc["ON"] = mySettings.ON;

  writeSettings(doc, settingsPath);

  sprintf_P(logBuff, PSTR("Saved settings:"));
  recordLog(4, PSTR(__FILE__), __LINE__, PSTR(__func__));

  serializeJsonPretty(doc, Serial);
}

RPC_Response processSetConfig(const RPC_Data &data)
{
  if(data["model"] != nullptr)
  {
    strlcpy(config.model, data["model"].as<const char*>(), sizeof(config.model));
  }
  configSave();
  return RPC_Response("setConfigModel", 1);
}

RPC_Response processSetSettings(const RPC_Data &data)
{
  if(data["dutyCycle"] != nullptr)
  {
    uint8_t index = 0;
    for(JsonVariant v : data["dutyCycle"].as<JsonArray>())
    {
        mySettings.dutyCycle[index] = v.as<uint8_t>();
        index++;
    }
  }

  if(data["dutyRange"] != nullptr)
  {
    uint8_t index = 0;
    for(JsonVariant v : data["dutyRange"].as<JsonArray>())
    {
        mySettings.dutyRange[index] = v.as<long>();
        index++;
    }
  }

  if(data["dutyCycleFailSafe"] != nullptr)
  {
    uint8_t index = 0;
    for(JsonVariant v : data["dutyCycleFailSafe"].as<JsonArray>())
    {
        mySettings.dutyCycleFailSafe[index] = v.as<uint8_t>();
        index++;
    }
  }

  if(data["dutyRangeFailSafe"] != nullptr)
  {
    uint8_t index = 0;
    for(JsonVariant v : data["dutyRangeFailSafe"].as<JsonArray>())
    {
        mySettings.dutyRangeFailSafe[index] = v.as<long>();
        index++;
    }
  }

  if(data["relayPin"] != nullptr)
  {
    uint8_t index = 0;
    for(JsonVariant v : data["relayPin"].as<JsonArray>())
    {
        mySettings.relayPin[index] = v.as<long>();
        index++;
    }
  }

  if(data["ON"] != nullptr)
  {
    mySettings.ON = data["ON"].as<bool>();
  }

  saveSettings();
  loadSettings();

  return RPC_Response("processSetSettings", 1);
}