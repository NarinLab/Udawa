/**
 * UDAWA - Universal Digital Agriculture Watering Assistant
 * Firmware for Actuator 4Ch UDAWA Board (Gadadar)
 * Licensed under aGPLv3
 * Researched and developed by PRITA Research Group & Narin Laboratory
 * prita.undiknas.ac.id | narin.co.id
**/
#include "main.h"

Settings mySettings;

const size_t callbacksSize = 8;
GenericCallback callbacks[callbacksSize] = {
  { "sharedAttributesUpdate", processSharedAttributesUpdate },
  { "provisionResponse", processProvisionResponse },
  { "saveConfig", processSaveConfig },
  { "saveSettings", processSaveSettings },
  { "syncClientAttributes", processSyncClientAttributes },
  { "reboot", processReboot },
  { "setSwitch", processSetSwitch },
  { "getSwitch", processGetSwitch}
};

void setup()
{
  startup();
  loadSettings();

  networkInit();
  tb.setBufferSize(DOCSIZE);

  if(mySettings.fTeleDev)
  {
    taskManager.scheduleFixedRate(1000, [] {
      publishDeviceTelemetry();
    });
  }
}

void loop()
{
  udawa();
  dutyRuntime();

  if(tb.connected() && FLAG_IOT_SUBSCRIBE)
  {
    if(tb.callbackSubscribe(callbacks, callbacksSize))
    {
      sprintf_P(logBuff, PSTR("Callbacks subscribed successfuly!"));
      recordLog(4, PSTR(__FILE__), __LINE__, PSTR(__func__));
      FLAG_IOT_SUBSCRIBE = false;
    }
    if (tb.Firmware_Update(CURRENT_FIRMWARE_TITLE, CURRENT_FIRMWARE_VERSION))
    {
      sprintf_P(logBuff, PSTR("OTA Update finished, rebooting..."));
      recordLog(5, PSTR(__FILE__), __LINE__, PSTR(__func__));
      reboot();
    }
    else
    {
      sprintf_P(logBuff, PSTR("Firmware up-to-date."));
      recordLog(5, PSTR(__FILE__), __LINE__, PSTR(__func__));
    }

    syncClientAttributes();
  }
}

void loadSettings()
{
  StaticJsonDocument<DOCSIZE> doc;
  readSettings(doc, settingsPath);

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

  if(doc["fTeleDev"] != nullptr)
  {
    mySettings.fTeleDev = doc["fTeleDev"].as<bool>();
  }
  else
  {
    mySettings.fTeleDev = 1;
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
  doc["fTeleDev"] = mySettings.fTeleDev;

  writeSettings(doc, settingsPath);
}

callbackResponse processSaveConfig(const callbackData &data)
{
  configSave();
  return callbackResponse("saveConfig", 1);
}

callbackResponse processSaveSettings(const callbackData &data)
{
  saveSettings();
  loadSettings();

  mySettings.lastUpdated = millis();
  return callbackResponse("saveSettings", 1);
}

callbackResponse processReboot(const callbackData &data)
{
  reboot();
  return callbackResponse("reboot", 1);
}

callbackResponse processSyncClientAttributes(const callbackData &data)
{
  syncClientAttributes();
  return callbackResponse("syncClientAttributes", 1);
}

callbackResponse processSetSwitch(const callbackData &data)
{
  if(data["ch"] != nullptr && data["state"] != nullptr)
  {
    String ch = data["ch"].as<String>();
    String state = data["state"].as<String>();
    setSwitch(ch, state);
    return callbackResponse(ch.c_str(), String(state).c_str());
  }
  else
  {
    return callbackResponse(String("ch").c_str(), String("null").c_str());
  }
}

callbackResponse processGetSwitch(const callbackData &data)
{
  String log;
  serializeJson(data, log);
  sprintf_P(logBuff, PSTR("DEBUG %s"), log.c_str());
  recordLog(5, PSTR(__FILE__), __LINE__, PSTR(__func__));

  uint8_t pin = 0;
  String state;
  if(data["ch"] != nullptr)
  {
    String ch = data["ch"].as<String>();
    if(ch == String("ch1")){pin = mySettings.relayPin[0];}
    else if(ch == String("ch2")){pin = mySettings.relayPin[1];}
    else if(ch == String("ch3")){pin = mySettings.relayPin[2];}
    else if(ch == String("ch4")){pin = mySettings.relayPin[3];}
    else
    {
      return callbackResponse(ch.c_str(), String("null").c_str());
    }
    state = digitalRead(pin) == mySettings.ON ? "ON" : "OFF";
    return callbackResponse(ch.c_str(), String(state).c_str());
  }
  return callbackResponse(String("ch").c_str(), String("null").c_str());
}

void setSwitch(String ch, String state)
{
  bool fState = 0;
  uint8_t pin = 0;

  if(ch == String("ch1")){pin = mySettings.relayPin[0];}
  else if(ch == String("ch2")){pin = mySettings.relayPin[1];}
  else if(ch == String("ch3")){pin = mySettings.relayPin[2];}
  else if(ch == String("ch4")){pin = mySettings.relayPin[3];}
  if(state == String("ON"))
  {
    fState = mySettings.ON;
  }
  else
  {
    fState = !mySettings.ON;
  }

  pinMode(pin, OUTPUT);
  digitalWrite(pin, fState);
}

void dutyRuntime()
{
  for(uint8_t i = 0; i < countof(mySettings.relayPin); i++)
  {
    if(mySettings.dutyCycle[i] != 0)
    {
      if( mySettings.dutyState[i] == mySettings.ON )
      {
        if( mySettings.dutyCycle[i] != 100 && (millis() - mySettings.dutyCounter[i] ) >= (float)(( ((float)mySettings.dutyCycle[i] / 100) * (float)mySettings.dutyRange[i]) * 1000))
        {
          mySettings.dutyState[i] = !mySettings.ON;
          pinMode(mySettings.relayPin[i], OUTPUT);
          digitalWrite(mySettings.relayPin[i], mySettings.dutyState[i]);
          mySettings.dutyCounter[i] = millis();
          sprintf_P(logBuff, PSTR("Relay Ch%d changed to %d - dutyCycle:%d - dutyRange:%ld"), i+1, mySettings.dutyState[i], mySettings.dutyCycle[i], mySettings.dutyRange[i]);
          recordLog(5, PSTR(__FILE__), __LINE__, PSTR(__func__));
          if(tb.connected())
          {
            StaticJsonDocument<DOCSIZE> doc;
            doc[(String("ch")+String(i+1)).c_str()] = mySettings.dutyState[i];
            tb.sendTelemetryDoc(doc);
            doc.clear();
          }
        }
      }
      else
      {
        if( mySettings.dutyCycle[i] != 0 && (millis() - mySettings.dutyCounter[i] ) >= (float) ( ((100 - (float) mySettings.dutyCycle[i]) / 100) * (float) mySettings.dutyRange[i]) * 1000)
        {
          mySettings.dutyState[i] = mySettings.ON;
          pinMode(mySettings.relayPin[i], OUTPUT);
          digitalWrite(mySettings.relayPin[i], mySettings.dutyState[i]);
          mySettings.dutyCounter[i] = millis();
          sprintf_P(logBuff, PSTR("Relay Ch%d changed to %d - dutyCycle:%d - dutyRange:%ld"), i+1, mySettings.dutyState[i], mySettings.dutyCycle[i], mySettings.dutyRange[i]);
          recordLog(5, PSTR(__FILE__), __LINE__, PSTR(__func__));
          if(tb.connected())
          {
            StaticJsonDocument<DOCSIZE> doc;
            doc[(String("ch")+String(i+1)).c_str()] = mySettings.dutyState[i];
            tb.sendTelemetryDoc(doc);
            doc.clear();
          }
        }
      }
    }
  }
}

callbackResponse processSharedAttributesUpdate(const callbackData &data)
{
  if(config.logLev >= 4){serializeJsonPretty(data, Serial);}

  if(data["model"] != nullptr){strlcpy(config.model, data["model"].as<const char*>(), sizeof(config.model));}
  if(data["group"] != nullptr){strlcpy(config.group, data["group"].as<const char*>(), sizeof(config.group));}
  if(data["broker"] != nullptr){strlcpy(config.broker, data["broker"].as<const char*>(), sizeof(config.broker));}
  if(data["port"] != nullptr){data["port"].as<uint16_t>();}
  if(data["wssid"] != nullptr){strlcpy(config.wssid, data["wssid"].as<const char*>(), sizeof(config.wssid));}
  if(data["wpass"] != nullptr){strlcpy(config.wpass, data["wpass"].as<const char*>(), sizeof(config.wpass));}
  if(data["dssid"] != nullptr){strlcpy(config.dssid, data["dssid"].as<const char*>(), sizeof(config.dssid));}
  if(data["dpass"] != nullptr){strlcpy(config.dpass, data["dpass"].as<const char*>(), sizeof(config.dpass));}
  if(data["upass"] != nullptr){strlcpy(config.upass, data["upass"].as<const char*>(), sizeof(config.upass));}
  if(data["provisionDeviceKey"] != nullptr){strlcpy(config.provisionDeviceKey, data["provisionDeviceKey"].as<const char*>(), sizeof(config.provisionDeviceKey));}
  if(data["provisionDeviceSecret"] != nullptr){strlcpy(config.provisionDeviceSecret, data["provisionDeviceSecret"].as<const char*>(), sizeof(config.provisionDeviceSecret));}
  if(data["logLev"] != nullptr){config.logLev = data["logLev"].as<uint8_t>();}

  if(data["dutyCycleCh1"] != nullptr)
  {
    mySettings.dutyCycle[0] = data["dutyCycleCh1"].as<uint8_t>();
    if(data["dutyCycleCh1"].as<uint8_t>() == 0)
    {
      setSwitch(String("ch1"), String("OFF"));
    }
  }
  if(data["dutyCycleCh2"] != nullptr)
  {
    mySettings.dutyCycle[1] = data["dutyCycleCh2"].as<uint8_t>();
    if(data["dutyCycleCh2"].as<uint8_t>() == 0)
    {
      setSwitch(String("ch2"), String("OFF"));
    }
  }
  if(data["dutyCycleCh3"] != nullptr)
  {
    mySettings.dutyCycle[2] = data["dutyCycleCh3"].as<uint8_t>();
    if(data["dutyCycleCh3"].as<uint8_t>() == 0)
    {
      setSwitch(String("ch3"), String("OFF"));
    }
  }
  if(data["dutyCycleCh4"] != nullptr)
  {
    mySettings.dutyCycle[3] = data["dutyCycleCh4"].as<uint8_t>();
    if(data["dutyCycleCh4"].as<uint8_t>() == 0)
    {
      setSwitch(String("ch4"), String("OFF"));
    }
  }

  if(data["dutyRangeCh1"] != nullptr){mySettings.dutyRange[0] = data["dutyRangeCh1"].as<unsigned long>();}
  if(data["dutyRangeCh2"] != nullptr){mySettings.dutyRange[1] = data["dutyRangeCh2"].as<unsigned long>();}
  if(data["dutyRangeCh3"] != nullptr){mySettings.dutyRange[2] = data["dutyRangeCh3"].as<unsigned long>();}
  if(data["dutyRangeCh4"] != nullptr){mySettings.dutyRange[3] = data["dutyRangeCh4"].as<unsigned long>();}

  if(data["dutyCycleFailSafeCh1"] != nullptr){mySettings.dutyCycleFailSafe[0] = data["dutyCycleFailSafeCh1"].as<uint8_t>();}
  if(data["dutyCycleFailSafeCh2"] != nullptr){mySettings.dutyCycleFailSafe[1] = data["dutyCycleFailSafeCh2"].as<uint8_t>();}
  if(data["dutyCycleFailSafeCh3"] != nullptr){mySettings.dutyCycleFailSafe[2] = data["dutyCycleFailSafeCh3"].as<uint8_t>();}
  if(data["dutyCycleFailSafeCh4"] != nullptr){mySettings.dutyCycleFailSafe[3] = data["dutyCycleFailSafeCh4"].as<uint8_t>();}

  if(data["dutyRangeFailSafeCh1"] != nullptr){mySettings.dutyRangeFailSafe[0] = data["dutyRangeFailSafeCh1"].as<unsigned long>();}
  if(data["dutyRangeFailSafeCh2"] != nullptr){mySettings.dutyRangeFailSafe[1] = data["dutyRangeFailSafeCh2"].as<unsigned long>();}
  if(data["dutyRangeFailSafeCh3"] != nullptr){mySettings.dutyRangeFailSafe[2] = data["dutyRangeFailSafeCh3"].as<unsigned long>();}
  if(data["dutyRangeFailSafeCh4"] != nullptr){mySettings.dutyRangeFailSafe[3] = data["dutyRangeFailSafeCh4"].as<unsigned long>();}

  if(data["relayPinCh1"] != nullptr){mySettings.relayPin[0] = data["relayPinCh1"].as<uint8_t>();}
  if(data["relayPinCh2"] != nullptr){mySettings.relayPin[1] = data["relayPinCh2"].as<uint8_t>();}
  if(data["relayPinCh3"] != nullptr){mySettings.relayPin[2] = data["relayPinCh3"].as<uint8_t>();}
  if(data["relayPinCh4"] != nullptr){mySettings.relayPin[3] = data["relayPinCh4"].as<uint8_t>();}

  if(data["ON"] != nullptr){mySettings.ON = data["ON"].as<bool>();}
  if(data["fTeleDev"] != nullptr){mySettings.fTeleDev = data["fTeleDev"].as<bool>();}

  mySettings.lastUpdated = millis();
  return callbackResponse("sharedAttributesUpdate", 1);
}

void syncClientAttributes()
{
  StaticJsonDocument<DOCSIZE> doc;

  IPAddress ip = WiFi.localIP();
  char ipa[25];
  sprintf(ipa, "%d.%d.%d.%d", ip[0], ip[1], ip[2], ip[3]);
  doc["ipad"] = ipa;
  doc["compdate"] = COMPILED;
  doc["fmTitle"] = CURRENT_FIRMWARE_TITLE;
  doc["fmVersion"] = CURRENT_FIRMWARE_VERSION;
  doc["stamac"] = WiFi.macAddress();
  tb.sendAttributeDoc(doc);
  doc.clear();
  doc["apmac"] = WiFi.softAPmacAddress();
  doc["flashFree"] = ESP.getFreeSketchSpace();
  doc["firmwareSize"] = ESP.getSketchSize();
  doc["flashSize"] = ESP.getFlashChipSize();
  doc["sdkVer"] = ESP.getSdkVersion();
  tb.sendAttributeDoc(doc);
  doc.clear();
  doc["model"] = config.model;
  doc["group"] = config.group;
  doc["broker"] = config.broker;
  doc["port"] = config.port;
  doc["wssid"] = config.wssid;
  tb.sendAttributeDoc(doc);
  doc.clear();
  doc["wpass"] = config.wpass;
  doc["dssid"] = config.dssid;
  doc["dpass"] = config.dpass;
  doc["upass"] = config.upass;
  doc["accessToken"] = config.accessToken;
  doc["provisionDeviceKey"] = config.provisionDeviceKey;
  doc["provisionDeviceSecret"] = config.provisionDeviceSecret;
  doc["logLev"] = config.logLev;
  tb.sendAttributeDoc(doc);
  doc.clear();
  doc["dutyCycleCh1"] = mySettings.dutyCycle[0];
  doc["dutyCycleCh2"] = mySettings.dutyCycle[1];
  doc["dutyCycleCh3"] = mySettings.dutyCycle[2];
  doc["dutyCycleCh4"] = mySettings.dutyCycle[3];
  doc["dutyRangeCh1"] = mySettings.dutyRange[0];
  doc["dutyRangeCh2"] = mySettings.dutyRange[1];
  doc["dutyRangeCh3"] = mySettings.dutyRange[2];
  doc["dutyRangeCh4"] = mySettings.dutyRange[3];
  tb.sendAttributeDoc(doc);
  doc.clear();
  doc["dutyCycleFailSafeCh1"] = mySettings.dutyCycleFailSafe[0];
  doc["dutyCycleFailSafeCh2"] = mySettings.dutyCycleFailSafe[1];
  doc["dutyCycleFailSafeCh3"] = mySettings.dutyCycleFailSafe[2];
  doc["dutyCycleFailSafeCh4"] = mySettings.dutyCycleFailSafe[3];
  doc["dutyRangeFailSafeCh1"] = mySettings.dutyRangeFailSafe[0];
  doc["dutyRangeFailSafeCh2"] = mySettings.dutyRangeFailSafe[1];
  doc["dutyRangeFailSafeCh3"] = mySettings.dutyRangeFailSafe[2];
  doc["dutyRangeFailSafeCh4"] = mySettings.dutyRangeFailSafe[3];
  tb.sendAttributeDoc(doc);
  doc.clear();
  doc["relayPinCh1"] = mySettings.relayPin[0];
  doc["relayPinCh2"] = mySettings.relayPin[1];
  doc["relayPinCh3"] = mySettings.relayPin[2];
  doc["relayPinCh4"] = mySettings.relayPin[3];
  doc["ON"] = mySettings.ON;
  doc["fTeleDev"] = mySettings.fTeleDev;
  tb.sendAttributeDoc(doc);
  doc.clear();
}

void publishDeviceTelemetry()
{
  StaticJsonDocument<DOCSIZE> doc;

  doc["heap"] = heap_caps_get_free_size(MALLOC_CAP_8BIT);;
  doc["rssi"] = WiFi.RSSI();
  doc["uptime"] = millis()/1000;
  tb.sendTelemetryDoc(doc);
  doc.clear();
}