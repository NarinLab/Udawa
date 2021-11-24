del *.bin
del *.txt
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


cd %home%
cd ../Firmware/Actuator4CH-ESP32
C:/%HomePath%/.platformio/penv/Scripts/platformio.exe run --environment esp32doit-devkit-v1
copy ".pio\build\esp32doit-devkit-v1\firmware.bin" "%home%\Gadadar-ESP32.bin"
cd %home%
certutil -hashfile Gadadar-ESP32.bin MD5 > MD5_Gadadar-ESP32.bin.txt

cd %home%
cd ../Firmware/SensorWater-ESP32
C:/%HomePath%/.platformio/penv/Scripts/platformio.exe run --environment esp32doit-devkit-v1
copy ".pio\build\esp32doit-devkit-v1\firmware.bin" "%home%\Damodar-ESP32.bin"
cd %home%
certutil -hashfile Damodar-ESP32.bin MD5 > MD5_Damodar-ESP32.bin.txt

cd %home%
cd ../Firmware/Legacy-ESP32
C:/%HomePath%/.platformio/penv/Scripts/platformio.exe run --environment esp32doit-devkit-v1
copy ".pio\build\esp32doit-devkit-v1\firmware.bin" "%home%\Legacy-ESP32.bin"
cd %home%
certutil -hashfile Legacy-ESP32.bin MD5 > MD5_Legacy-ESP32.bin.txt

pause