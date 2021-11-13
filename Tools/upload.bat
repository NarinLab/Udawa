@echo off
:START
set /p ip="Masukan alamat IP target: "
set /p upass="Masukan OTA password: "
set /p firmware="Masukan Firmware: "

espota.exe -i %ip% -p 3232 --auth=%upass% -f %firmware% --debug --progress

setLocal
set /p ulang="Sebelum muncul pesan OK, upload berarti gagal. Ingin mengulang kembali atau sudahi? [Y/N]"
IF /i '%ulang%' == 'y' GOTO START
IF /i '%ulang%' != 'y' GOTO END
endLocal

:END
del firmware.bin
pause