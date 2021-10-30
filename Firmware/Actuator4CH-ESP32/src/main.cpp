/**
 * UDAWA - Universal Digital Agriculture Watering Assistant
 * Firmware for Actuator 4Ch UDAWA Board
 * Licensed under aGPLv3
 * Researched and developed by PRITA Research Group & Narin Laboratory
 * prita.undiknas.ac.id | narin.co.id
**/
#include "main.h"

const size_t callbacks_size = 3;
RPC_Callback callbacks[callbacks_size] = {
  { "setConfigModel", processSetConfigModel },
  { "setDutyCycle", processSetDutyCycle },
  { "setDutyRange", processSetDutyRange }
};

void setup()
{
  startup();
}
void loop()
{
  udawa();

  if(FLAG_IOT_RPC_SUBSCRIBE)
  {
    if (!tb.RPC_Subscribe(callbacks, callbacks_size))
    {
      sprintf_P(logBuff, PSTR("Failed to subscribe RPC Callback!"));
      recordLog(4, PSTR(__FILE__), __LINE__, PSTR(__func__));
    }
  }
}

RPC_Response processSetConfigModel(const RPC_Data &data)
{
  return RPC_Response("setConfigModel", 1);
}

RPC_Response processSetDutyCycle(const RPC_Data &data)
{
  return RPC_Response("setDutyCycle", 1);
}

RPC_Response processSetDutyRange(const RPC_Data &data)
{
  return RPC_Response("setDutyRange", 1);
}