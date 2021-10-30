#ifndef main_h
#define main_h

#include "libudawa.h"

RPC_Response processSetConfigModel(const RPC_Data &data);
RPC_Response processSetDutyCycle(const RPC_Data &data);
RPC_Response processSetDutyRange(const RPC_Data &data);

#endif