#include "main.h"

uint16_t taskIdPublishWater;
Water water;

void setup()
{
  startup();
  syncConfigCoMCU();
  taskIdPublishWater = taskManager.scheduleFixedRate(60000, [] {
    publishWater();
  });
}

void loop()
{
  udawa();
  taskManager.runLoop();
}

void publishWater()
{
  water.celcius = -127.0;
  water.ec = -127.0;
  water.tds = -127.0;

  StaticJsonDocument<DOCSIZE> doc;
  doc["method"] = "getWaterTemp";
  serialWriteToCoMcu(doc, 1);
  if(doc["params"]["celcius"] != nullptr)
  {
    water.celcius = doc["params"]["celcius"];
    tb.sendTelemetryFloat("WaterTemp", water.celcius);
  }

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