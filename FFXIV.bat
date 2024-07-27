@echo off
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Ejecutando como Administrador
    goto :run
) else (
    echo Solicitando privilegios de administrador...
    powershell -Command "Start-Process '%~0' -Verb RunAs"
    exit
)

:run
start "" "D:\Jocs\Advanced Combat Tracker\Advanced Combat Tracker.exe"
timeout /t 2 /nobreak >nul
start "" "%UserProfile%\Desktop\FFXIV.ahk"
timeout /t 2 /nobreak >nul
start "" "C:\Users\Marc\AppData\Local\XIVLauncher\XIVLauncher.exe"
exit

