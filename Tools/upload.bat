@echo off
:START
set /p ip="Masukan alamat IP target:"
set /p upass="Masukan OTA password:"
espota.exe -i %ip% -p 3232 --auth=%upass% -f firmware.bin --debug --progress

setLocal
set /p ulang="Sebelum muncul pesan OK, upload berarti gagal. Ingin mengulang kembali atau sudahi? [Y/N]"
IF %ulang% == "Y" GOTO START
IF %ulang% == "y" GOTO START
endLocal

:END
del firmware.bin
pause