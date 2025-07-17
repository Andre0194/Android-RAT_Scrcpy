@echo off
title SCRCPY Android Screen Mirroring Guide
color 0A

:MENU
cls
echo ================================
echo      SCRCPY MIRROR TOOL
echo ================================
echo.
echo 1. Run scrcpy via USB
echo 2. Setup scrcpy over Wi-Fi (automatic TCP/IP mode)
echo 3. Manually connect over Wi-Fi
echo 4. Use specific device serial/IP
echo 5. Exit
echo.
set /p choice=Enter your choice: 

if "%choice%"=="1" goto USB
if "%choice%"=="2" goto WIFI_AUTO
if "%choice%"=="3" goto WIFI_MANUAL
if "%choice%"=="4" goto SELECT_SERIAL
if "%choice%"=="5" exit
goto MENU

:USB
cls
echo [*] Launching scrcpy via USB...
scrcpy.exe
pause
goto MENU

:WIFI_AUTO
cls
echo [*] Ensure device is connected via USB and on same Wi-Fi
scrcpy.exe --tcpip
pause
goto MENU

:WIFI_MANUAL
cls
echo [*] Ensure device is connected via USB and on same Wi-Fi
set /p ip=Enter Device IP Address (e.g., 192.168.1.5): 
adb tcpip 5555
adb connect %ip%:5555
scrcpy.exe
pause
goto MENU

:SELECT_SERIAL
cls
echo.
echo Choose one:
echo 1. Use serial number
echo 2. Use IP address directly
set /p opt=Enter option: 

if "%opt%"=="1" (
    set /p serial=Enter device serial: 
    scrcpy.exe -s %serial%
) else (
    set /p ip=Enter device IP (e.g., 192.168.1.5): 
    scrcpy.exe --tcpip=%ip%
)
pause
goto MENU
