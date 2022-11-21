/**
 * UDAWA - Universal Digital Agriculture Watering Assistant
 * Firmware for Actuator 4Ch UDAWA Board (Gadadar)
 * Licensed under aGPLv3
 * Researched and developed by PRITA Research Group & Narin Laboratory
 * prita.undiknas.ac.id | narin.co.id
**/
#include "main.h"

using namespace libudawa;
Settings mySettings;

const size_t callbacksSize = 12;
GenericCallback callbacks[callbacksSize] = {
  { "sharedAttributesUpdate", processSharedAttributesUpdate },
  { "provisionResponse", processProvisionResponse },
  { "saveConfig", processSaveConfig },
  { "saveSettings", processSaveSettings },
  { "saveConfigCoMCU", processSaveConfigCoMCU },
  { "syncClientAttributes", processSyncClientAttributes },
  { "reboot", processReboot },
  { "setSwitch", processSetSwitch },
  { "getSwitchCh1", processGetSwitchCh1},
  { "getSwitchCh2", processGetSwitchCh2},
  { "getSwitchCh3", processGetSwitchCh3},
  { "getSwitchCh4", processGetSwitchCh4}
};

void setup()
{
  startup();
  loadSettings();
  configCoMCULoad();

  networkInit();
  tb.setBufferSize(DOCSIZE);

  taskid_t taskPublishDeviceTelemetry = taskManager.scheduleFixedRate(1000, [] {
    publishDeviceTelemetry();
  });
  taskManager.setTaskEnabled(taskPublishDeviceTelemetry, false);

  taskid_t taskMonitorPowerUsage = taskManager.scheduleFixedRate(mySettings.intrvlRecPwgUsg, [] {
    recPowerUsage();
  });
  taskManager.setTaskEnabled(taskMonitorPowerUsage, false);
}

void loop()
{
  udawa();
  relayControlByDateTime();
  relayControlByDutyCycle();
  publishSwitch();

  if(tb.connected() && FLAG_IOT_SUBSCRIBE)
  {
    if(tb.callbackSubscribe(callbacks, callbacksSize))
    {
      log_manager->info(PSTR(__func__),PSTR("Callbacks subscribed successfuly!\n"));
      FLAG_IOT_SUBSCRIBE = false;
    }
    if (tb.Firmware_Update(CURRENT_FIRMWARE_TITLE, CURRENT_FIRMWARE_VERSION))
    {
      log_manager->info(PSTR(__func__),PSTR("OTA Update finished, rebooting...\n"));
      reboot();
    }
    else
    {
      log_manager->info(PSTR(__func__),PSTR("Firmware up-to-date.\n"));
    }

    syncClientAttributes();
  }
}

void getPowerUsage(){
  StaticJsonDocument<DOCSIZE> doc;
  doc["pinACS"] = mySettings.pinACS;
  doc["testFreq"] = mySettings.testFreq;
  doc["windowLength"] = mySettings.windowLength;
  doc["intercept"] = mySettings.intercept;
  doc["slope"] = mySettings.slope;
  doc["method"] = "setSettings";
  serialWriteToCoMcu(doc, false);
  doc.clear();
  doc["method"] = "getPowerUsage";
  serialWriteToCoMcu(doc, true);
  if(doc["armpsTRMS"] != nullptr && doc["ACSValue"] != nullptr){
    mySettings.latestAmpsTRMS = doc["armpsTRMS"].as<float>();
    mySettings.latestACSValue = doc["ACSValue"].as<float>();
    doc.clear();
    log_manager->debug(PSTR(__func__), "Latest power meter reading armpsTRMS: %.2f - ACSValue: %.2f\n", mySettings.latestAmpsTRMS, mySettings.latestACSValue);
    mySettings.accuAmpsTRMS += doc["armpsTRMS"].as<float>();
    mySettings.accuACSValue += doc["ACSValue"].as<float>();
    mySettings.counterPowerMonitor++;
  }
}

void recPowerUsage(){
  if(tb.connected()){
    float ampsTRMS = mySettings.accuAmpsTRMS / mySettings.counterPowerMonitor;
    float ACSValue = mySettings.accuACSValue / mySettings.counterPowerMonitor;
    StaticJsonDocument<DOCSIZE> doc;
    doc["armpsTRMS"] = ampsTRMS;
    doc["ACSValue"] = ACSValue;
    tb.sendTelemetryDoc(doc);
    doc.clear();
    log_manager->info(PSTR(__func__), "Recorded power usage armpsTRMS: %.2f - ACSValue: %.2f\n", ampsTRMS, ACSValue);
    mySettings.accuACSValue = 0;
    mySettings.accuAmpsTRMS = 0;
    mySettings.counterPowerMonitor = 0;
  }
  else{
    log_manager->warn(PSTR(__func__), "Failed to record power usage, IoT not connected. %d records waiting on the accumulator.\n", mySettings.counterPowerMonitor);
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

  if(doc["relayActivationDateTime"] != nullptr)
  {
    uint8_t index = 0;
    for(JsonVariant v : doc["relayActivationDateTime"].as<JsonArray>())
    {
        mySettings.relayActivationDateTime[index] = v.as<unsigned long>();
        index++;
    }
  }
  else
  {
    for(uint8_t i = 0; i < countof(mySettings.relayActivationDateTime); i++)
    {
        mySettings.relayActivationDateTime[i] = 0;
    }
  }

  if(doc["relayActivationDuration"] != nullptr)
  {
    uint8_t index = 0;
    for(JsonVariant v : doc["relayActivationDuration"].as<JsonArray>())
    {
        mySettings.relayActivationDuration[index] = v.as<unsigned long>();
        index++;
    }
  }
  else
  {
    for(uint8_t i = 0; i < countof(mySettings.relayActivationDuration); i++)
    {
        mySettings.relayActivationDuration[i] = 0;
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

  if(doc["intrvlRecPwgUsg"] != nullptr)
  {
    mySettings.intrvlRecPwgUsg = doc["intrvlRecPwgUsg"].as<long>();
  }
  else
  {
    mySettings.intrvlRecPwgUsg = 600;
  }

  if(doc["relayControlMode"] != nullptr)
  {
    uint8_t index = 0;
    for(JsonVariant v : doc["relayControlMode"].as<JsonArray>())
    {
        mySettings.relayControlMode[index] = v.as<uint8_t>();
        index++;
    }
  }
  else
  {
    for(uint8_t i = 0; i < countof(mySettings.relayControlMode); i++)
    {
        mySettings.relayControlMode[i] = 0;
    }
  }

  for(uint8_t i = 0; i < countof(mySettings.dutyCounter); i++)
  {
    mySettings.dutyCounter[i] = 86400;
  }

  if(doc["pinACS"] != nullptr){mySettings.pinACS = doc["pinACS"].as<uint8_t>();}
  else{mySettings.pinACS = 14;}
  if(doc["testFreq"] != nullptr){mySettings.testFreq = doc["testFreq"].as<float>();}
  else{mySettings.testFreq = 50;}
  if(doc["windowLength"] != nullptr){mySettings.windowLength = doc["windowLength"].as<float>();}
  else{mySettings.windowLength = 40.0;}
  if(doc["intercept"] != nullptr){mySettings.intercept = doc["intercept"].as<float>();}
  else{mySettings.intercept = 0;}
  if(doc["slope"] != nullptr){mySettings.slope = doc["slope"].as<float>();}
  else{mySettings.slope = 0.0752;}

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

  JsonArray relayActivationDateTime = doc.createNestedArray("relayActivationDateTime");
  for(uint8_t i=0; i<countof(mySettings.relayActivationDateTime); i++)
  {
    relayActivationDateTime.add(mySettings.relayActivationDateTime[i]);
  }

  JsonArray relayActivationDuration = doc.createNestedArray("relayActivationDuration");
  for(uint8_t i=0; i<countof(mySettings.relayActivationDuration); i++)
  {
    relayActivationDuration.add(mySettings.relayActivationDuration[i]);
  }

  JsonArray relayPin = doc.createNestedArray("relayPin");
  for(uint8_t i=0; i<countof(mySettings.relayPin); i++)
  {
    relayPin.add(mySettings.relayPin[i]);
  }

  doc["ON"] = mySettings.ON;
  doc["intrvlRecPwgUsg"] = mySettings.intrvlRecPwgUsg;

  JsonArray relayControlMode = doc.createNestedArray("relayControlMode");
  for(uint8_t i=0; i<countof(mySettings.relayControlMode); i++)
  {
    relayControlMode.add(mySettings.relayControlMode[i]);
  }

  doc["pinACS"] = mySettings.pinACS;
  doc["testFreq"] = mySettings.testFreq;
  doc["windowLength"] = mySettings.windowLength;
  doc["intercept"] = mySettings.intercept;
  doc["slope"] = mySettings.slope;

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

callbackResponse processSaveConfigCoMCU(const callbackData &data)
{
  configCoMCUSave();
  configCoMCULoad();
  syncConfigCoMCU();
  return callbackResponse("saveConfigCoMCU", 1);
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
  if(data["params"]["ch"] != nullptr && data["params"]["state"] != nullptr)
  {
    String ch = data["params"]["ch"].as<String>();
    String state = data["params"]["state"].as<String>();
    log_manager->debug(PSTR(__func__),"Calling setSwitch (%s - %s)...\n", ch, state);
    setSwitch(ch, state);
  }
  return callbackResponse(data["params"]["ch"].as<const char*>(), data["params"]["state"].as<const char*>());
}

callbackResponse processGetSwitchCh1(const callbackData &data)
{
  return callbackResponse("ch1", mySettings.dutyState[0] == mySettings.ON ? "ON" : "OFF");
}

callbackResponse processGetSwitchCh2(const callbackData &data)
{
  return callbackResponse("ch2", mySettings.dutyState[1] == mySettings.ON ? "ON" : "OFF");
}

callbackResponse processGetSwitchCh3(const callbackData &data)
{
  return callbackResponse("ch3", mySettings.dutyState[2] == mySettings.ON ? "ON" : "OFF");
}

callbackResponse processGetSwitchCh4(const callbackData &data)
{
  return callbackResponse("ch4", mySettings.dutyState[3] == mySettings.ON ? "ON" : "OFF");
}

void setSwitch(String ch, String state)
{
  bool fState = 0;
  uint8_t pin = 0;

  if(ch == String("ch1")){pin = mySettings.relayPin[0]; mySettings.dutyState[0] = (state == String("ON")) ? mySettings.ON : !mySettings.ON; mySettings.publishSwitch[0] = true;}
  else if(ch == String("ch2")){pin = mySettings.relayPin[1]; mySettings.dutyState[1] = (state == String("ON")) ? mySettings.ON : !mySettings.ON; mySettings.publishSwitch[1] = true;}
  else if(ch == String("ch3")){pin = mySettings.relayPin[2]; mySettings.dutyState[2] = (state == String("ON")) ? mySettings.ON : !mySettings.ON; mySettings.publishSwitch[2] = true;}
  else if(ch == String("ch4")){pin = mySettings.relayPin[3]; mySettings.dutyState[3] = (state == String("ON")) ? mySettings.ON : !mySettings.ON; mySettings.publishSwitch[3] = true;}

  if(state == String("ON"))
  {
    fState = mySettings.ON;
  }
  else
  {
    fState = !mySettings.ON;
  }

  setCoMCUPin(pin, 'D', OUTPUT, 0, fState);
  log_manager->warn(PSTR(__func__), "Relay %s was set to %s / %d.\n", ch, state, (int)fState);
}

void relayControlByDateTime(){
  for(uint8_t i = 0; i < countof(mySettings.relayPin); i++)
  {
    if(mySettings.relayActivationDuration[i] > 0 && mySettings.relayControlMode[i] == 2){
      if(mySettings.relayActivationDateTime[i] <= rtc.getEpoch() && (mySettings.relayActivationDuration[i]) >=
        (rtc.getEpoch() - mySettings.relayActivationDateTime[i]) && mySettings.dutyState[i] != mySettings.ON){
          mySettings.dutyState[i] = mySettings.ON;
          String ch = "ch" + String(i+1);
          setSwitch(ch, "ON");
          log_manager->debug(PSTR(__func__),PSTR("Relay Ch%d changed to %d - ts:%d - tr:%d - exp:%d\n"), i+1,
            mySettings.dutyState[i], mySettings.relayActivationDateTime[i], mySettings.relayActivationDuration[i],
            mySettings.relayActivationDuration[i] - (rtc.getEpoch() - mySettings.relayActivationDateTime[i]));
      }
      else if(mySettings.dutyState[i] == mySettings.ON && (mySettings.relayActivationDuration[i]) <=
        (rtc.getEpoch() - mySettings.relayActivationDateTime[i])){
          mySettings.dutyState[i] = !mySettings.ON;
          String ch = "ch" + String(i+1);
          setSwitch(ch, "OFF");
          log_manager->debug(PSTR(__func__),PSTR("Relay Ch%d changed to %d - ts:%d - tr:%d - exp:%d\n"), i+1,
            mySettings.dutyState[i], mySettings.relayActivationDateTime[i], mySettings.relayActivationDuration[i],
            mySettings.relayActivationDuration[i] - (rtc.getEpoch() - mySettings.relayActivationDateTime[i]));
      }
    }
  }
}

void relayControlByDutyCycle()
{
  for(uint8_t i = 0; i < countof(mySettings.relayPin); i++)
  {
    if (mySettings.dutyRange[i] < 2){mySettings.dutyRange[i] = 2;} //safenet
    if(mySettings.dutyCycle[i] != 0 && mySettings.relayControlMode[i] == 1)
    {
      if( mySettings.dutyState[i] == mySettings.ON )
      {
        if( mySettings.dutyCycle[i] != 100 && (millis() - mySettings.dutyCounter[i] ) >= (float)(( ((float)mySettings.dutyCycle[i] / 100) * (float)mySettings.dutyRange[i]) * 1000))
        {
          mySettings.dutyState[i] = !mySettings.ON;
          String ch = "ch" + String(i+1);
          setSwitch(ch, "OFF");
          mySettings.dutyCounter[i] = millis();
          log_manager->debug(PSTR(__func__),PSTR("Relay Ch%d changed to %d - dutyCycle:%d - dutyRange:%ld\n"), i+1, mySettings.dutyState[i], mySettings.dutyCycle[i], mySettings.dutyRange[i]);
        }
      }
      else
      {
        if( mySettings.dutyCycle[i] != 0 && (millis() - mySettings.dutyCounter[i] ) >= (float) ( ((100 - (float) mySettings.dutyCycle[i]) / 100) * (float) mySettings.dutyRange[i]) * 1000)
        {
          mySettings.dutyState[i] = mySettings.ON;
          String ch = "ch" + String(i+1);
          setSwitch(ch, "ON");
          mySettings.dutyCounter[i] = millis();
          log_manager->debug(PSTR(__func__),PSTR("Relay Ch%d changed to %d - dutyCycle:%d - dutyRange:%ld\n"), i+1, mySettings.dutyState[i], mySettings.dutyCycle[i], mySettings.dutyRange[i]);
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
  if(data["gmtOffset"] != nullptr){config.gmtOffset = data["gmtOffset"].as<int>();}


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

  if(data["relayActivationDateTimeCh1"] != nullptr){mySettings.relayActivationDateTime[0] = data["relayActivationDateTimeCh1"].as<unsigned long>();}
  if(data["relayActivationDateTimeCh2"] != nullptr){mySettings.relayActivationDateTime[1] = data["relayActivationDateTimeCh2"].as<unsigned long>();}
  if(data["relayActivationDateTimeCh3"] != nullptr){mySettings.relayActivationDateTime[2] = data["relayActivationDateTimeCh3"].as<unsigned long>();}
  if(data["relayActivationDateTimeCh4"] != nullptr){mySettings.relayActivationDateTime[3] = data["relayActivationDateTimeCh4"].as<unsigned long>();}

  if(data["relayActivationDurationCh1"] != nullptr){mySettings.relayActivationDuration[0] = data["relayActivationDurationCh1"].as<unsigned long>();}
  if(data["relayActivationDurationCh2"] != nullptr){mySettings.relayActivationDuration[1] = data["relayActivationDurationCh2"].as<unsigned long>();}
  if(data["relayActivationDurationCh3"] != nullptr){mySettings.relayActivationDuration[2] = data["relayActivationDurationCh3"].as<unsigned long>();}
  if(data["relayActivationDurationCh4"] != nullptr){mySettings.relayActivationDuration[3] = data["relayActivationDurationCh4"].as<unsigned long>();}

  if(data["relayPinCh1"] != nullptr){mySettings.relayPin[0] = data["relayPinCh1"].as<uint8_t>();}
  if(data["relayPinCh2"] != nullptr){mySettings.relayPin[1] = data["relayPinCh2"].as<uint8_t>();}
  if(data["relayPinCh3"] != nullptr){mySettings.relayPin[2] = data["relayPinCh3"].as<uint8_t>();}
  if(data["relayPinCh4"] != nullptr){mySettings.relayPin[3] = data["relayPinCh4"].as<uint8_t>();}

  if(data["ON"] != nullptr){mySettings.ON = data["ON"].as<bool>();}
  if(data["intrvlRecPwgUsg"] != nullptr){mySettings.intrvlRecPwgUsg = data["intrvlRecPwgUsg"].as<long>();}


  if(data["relayControlModeCh1"] != nullptr){mySettings.relayControlMode[0] = data["relayControlModeCh1"].as<uint8_t>();}
  if(data["relayControlModeCh2"] != nullptr){mySettings.relayControlMode[1] = data["relayControlModeCh2"].as<uint8_t>();}
  if(data["relayControlModeCh3"] != nullptr){mySettings.relayControlMode[2] = data["relayControlModeCh3"].as<uint8_t>();}
  if(data["relayControlModeCh4"] != nullptr){mySettings.relayControlMode[3] = data["relayControlModeCh4"].as<uint8_t>();}

  if(data["pinACS"] != nullptr){mySettings.pinACS = data["pinACS"].as<uint8_t>();}
  if(data["testFreq"] != nullptr){mySettings.testFreq = data["testFreq"].as<float>();}
  if(data["windowLength"] != nullptr){mySettings.windowLength = data["windowLength"].as<float>();}
  if(data["intercept"] != nullptr){mySettings.intercept = data["intercept"].as<float>();}
  if(data["slope"] != nullptr){mySettings.slope = data["slope"].as<float>();}

  if(data["fPanic"] != nullptr){configcomcu.fPanic = data["fPanic"].as<bool>();}
  if(data["bfreq"] != nullptr){configcomcu.bfreq = data["bfreq"].as<uint16_t>();}
  if(data["fBuzz"] != nullptr){configcomcu.fBuzz = data["fBuzz"].as<bool>();}
  if(data["pinBuzzer"] != nullptr){configcomcu.pinBuzzer = data["pinBuzzer"].as<uint8_t>();}
  if(data["pinLedR"] != nullptr){configcomcu.pinLedR = data["pinLedR"].as<uint8_t>();}
  if(data["pinLedG"] != nullptr){configcomcu.pinLedG = data["pinLedG"].as<uint8_t>();}
  if(data["pinLedB"] != nullptr){configcomcu.pinLedB = data["pinLedB"].as<uint8_t>();}

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
  doc["gmtOffset"] = config.gmtOffset;
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
  doc["relayActivationDateTimeCh1"] = mySettings.relayActivationDateTime[0];
  doc["relayActivationDateTimeCh2"] = mySettings.relayActivationDateTime[1];
  doc["relayActivationDateTimeCh3"] = mySettings.relayActivationDateTime[2];
  doc["relayActivationDateTimeCh4"] = mySettings.relayActivationDateTime[3];
  doc["relayActivationDurationCh1"] = mySettings.relayActivationDuration[0];
  doc["relayActivationDurationCh2"] = mySettings.relayActivationDuration[1];
  doc["relayActivationDurationCh3"] = mySettings.relayActivationDuration[2];
  doc["relayActivationDurationCh4"] = mySettings.relayActivationDuration[3];
  tb.sendAttributeDoc(doc);
  doc.clear();
  doc["relayPinCh1"] = mySettings.relayPin[0];
  doc["relayPinCh2"] = mySettings.relayPin[1];
  doc["relayPinCh3"] = mySettings.relayPin[2];
  doc["relayPinCh4"] = mySettings.relayPin[3];
  doc["ON"] = mySettings.ON;
  doc["intrvlRecPwgUsg"] = mySettings.intrvlRecPwgUsg;
  doc["dt"] = rtc.getDateTime();
  doc["relayControlModeCh1"] = mySettings.relayControlMode[0];
  doc["relayControlModeCh2"] = mySettings.relayControlMode[1];
  doc["relayControlModeCh3"] = mySettings.relayControlMode[2];
  doc["relayControlModeCh4"] = mySettings.relayControlMode[3];
  tb.sendAttributeDoc(doc);
  doc.clear();
  doc["pinACS"] = mySettings.pinACS;
  doc["testFreq"] = mySettings.testFreq;
  doc["windowLength"] = mySettings.windowLength;
  doc["intercept"] = mySettings.intercept;
  doc["slope"] = mySettings.slope;
  tb.sendAttributeDoc(doc);
  doc.clear();
}

void publishDeviceTelemetry()
{
  StaticJsonDocument<DOCSIZE> doc;

  doc["heap"] = heap_caps_get_free_size(MALLOC_CAP_8BIT);
  doc["rssi"] = WiFi.RSSI();
  doc["uptime"] = millis()/1000;
  tb.sendTelemetryDoc(doc);
  doc.clear();
}

void publishSwitch(){
  if(tb.connected()){
    for (uint8_t i = 0; i < 4; i++){
      if(mySettings.publishSwitch[i]){
        StaticJsonDocument<DOCSIZE> doc;
        String chName = "ch" + String(i+1);
        doc[chName.c_str()] = (int)mySettings.dutyState[i];
        tb.sendTelemetryDoc(doc);
        doc.clear();

        mySettings.publishSwitch[i] = false;
      }
    }
  }
}