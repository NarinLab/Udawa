/**
 * UDAWA - Universal Digital Agriculture Watering Assistant
 * Firmware for Actuator 4Ch UDAWA Board (Gadadar)
 * Licensed under aGPLv3
 * Researched and developed by PRITA Research Group & Narin Laboratory
 * prita.undiknas.ac.id | narin.co.id
**/
#include "main.h"

Settings mySettings;

const size_t RPCCallbacksSize = 2;
RPC_Callback RPCCallbacks[RPCCallbacksSize] = {
  { "setConfig", processSetConfig },
  { "setSettings", processSetSettings }
};

const size_t SharedAttributesCallbacksSize = 1;
Shared_Attribute_Callback SharedAttributesCallbacks[SharedAttributesCallbacksSize] = {
  processSharedAttributesUpdate
};

void setup()
{
  startup();
  loadSettings();
}

void loop()
{
  udawa();
  dutyRuntime();

  if(tb.connected())
  {
    if (tb.Firmware_OTA_Subscribe() && FLAG_IOT_OTA_UPDATE_SUBSCRIBE)
    {
      if (tb.Firmware_Update(CURRENT_FIRMWARE_TITLE, CURRENT_FIRMWARE_VERSION))
      {
        sprintf_P(logBuff, PSTR("Firmware update complete. Rebooting now..."));
        recordLog(4, PSTR(__FILE__), __LINE__, PSTR(__func__));
      }
      else
      {
        sprintf_P(logBuff, PSTR("Firmware is up to date."));
        recordLog(4, PSTR(__FILE__), __LINE__, PSTR(__func__));
        tb.Firmware_OTA_Unsubscribe();
      }
      FLAG_IOT_OTA_UPDATE_SUBSCRIBE = false;
    }

    if (FLAG_IOT_SHARED_ATTRIBUTES_SUBSCRIBE)
    {
      if(tb.Shared_Attributes_Subscribe(SharedAttributesCallbacks, SharedAttributesCallbacksSize))
      {
        sprintf_P(logBuff, PSTR("Shared attributes update callbacks subscribed successfuly!"));
        recordLog(4, PSTR(__FILE__), __LINE__, PSTR(__func__));
        FLAG_IOT_SHARED_ATTRIBUTES_SUBSCRIBE = false;
      }
    }

    if (FLAG_IOT_RPC_SUBSCRIBE)
    {
      if(tb.RPC_Subscribe(RPCCallbacks, RPCCallbacksSize))
      {
        sprintf_P(logBuff, PSTR("RPC callbacks subscribed successfuly!"));
        recordLog(4, PSTR(__FILE__), __LINE__, PSTR(__func__));
        FLAG_IOT_RPC_SUBSCRIBE = false;
      }
    }

  }
}

void loadSettings()
{
  StaticJsonDocument<DOCSIZE> doc;
  readSettings(doc, settingsPath);

  sprintf_P(logBuff, PSTR("Loaded settings:"));
  recordLog(5, PSTR(__FILE__), __LINE__, PSTR(__func__));

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
        mySettings.dutyRange[index] = v.as<unsigned long>();
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
        mySettings.dutyRangeFailSafe[index] = v.as<unsigned long>();
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
        mySettings.relayPin[index] = v.as<uint8_t>();
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

  for(uint8_t i = 0; i < countof(mySettings.dutyCounter); i++)
  {
    mySettings.dutyCounter[i] = 86400;
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
  recordLog(5, PSTR(__FILE__), __LINE__, PSTR(__func__));

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

  mySettings.lastUpdated = millis();
  return RPC_Response("processSetSettings", 1);
}


void dutyRuntime()
{
  for(uint8_t i = 0; i < countof(mySettings.relayPin); i++)
  {
    if(mySettings.dutyCycle[i] != 0)
    {
      if( mySettings.dutyState[i] == mySettings.ON )
      {
        if( (millis() - mySettings.dutyCounter[i] ) >= (float)(( ((float)mySettings.dutyCycle[i] / 100) * (float)mySettings.dutyRange[i]) * 1000))
        {
          mySettings.dutyState[i] = !mySettings.ON;
          pinMode(mySettings.relayPin[i], OUTPUT);
          digitalWrite(mySettings.relayPin[i], mySettings.dutyState[i]);
          mySettings.dutyCounter[i] = millis();
          //sprintf_P(logBuff, PSTR("Relay Ch%d changed to %d - dutyCycle:%d - dutyRange:%ld"), i+1, mySettings.dutyState[i], mySettings.dutyCycle[i], mySettings.dutyRange[i]);
          //recordLog(5, PSTR(__FILE__), __LINE__, PSTR(__func__));
          if(tb.connected())
          {
            tb.sendTelemetryInt((String("ch")+String(i+1)).c_str(), mySettings.dutyState[i]);
          }
        }
      }
      else
      {
        if( (millis() - mySettings.dutyCounter[i] ) >= (float) ( ((100 - (float) mySettings.dutyCycle[i]) / 100) * (float) mySettings.dutyRange[i]) * 1000)
        {
          mySettings.dutyState[i] = mySettings.ON;
          pinMode(mySettings.relayPin[i], OUTPUT);
          digitalWrite(mySettings.relayPin[i], mySettings.dutyState[i]);
          mySettings.dutyCounter[i] = millis();
          //sprintf_P(logBuff, PSTR("Relay Ch%d changed to %d - dutyCycle:%d - dutyRange:%ld"), i+1, mySettings.dutyState[i], mySettings.dutyCycle[i], mySettings.dutyRange[i]);
          //recordLog(5, PSTR(__FILE__), __LINE__, PSTR(__func__));
          if(tb.connected())
          {
            tb.sendTelemetryInt((String("ch")+String(i+1)).c_str(), mySettings.dutyState[i]);
          }
        }
      }
    }
  }
}

void processSharedAttributesUpdate(const Shared_Attribute_Data &data)
{
  Serial.println("processSharedAttributesUpdate:");
  serializeJsonPretty(data, Serial);

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

  mySettings.lastUpdated = millis();
}