set home=%CD%

cd ../Firmware/Actuator4CH-ESP32/.pio/libdeps/esp32doit-devkit-v1/libudawa
git pull origin main
cd %home%
cd ../Firmware/SensorWater-ESP32/.pio/libdeps/esp32doit-devkit-v1/libudawa
git pull origin main
cd %home%
cd ../Firmware/Legacy-ESP32/.pio/libdeps/esp32doit-devkit-v1/libudawa
git pull origin main
cd %home%
cd ../Firmware/SensorWater-Nano/.pio/libdeps/nanoatmega328new/libudawa
git pull origin main

pause