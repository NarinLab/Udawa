#ifndef main_h
#define main_h

#include <libudawa.h>
#include <TaskManagerIO.h>

struct Water
{
    float celcius;
    float tds;
    float ec;
};

void publishWater();


#endif