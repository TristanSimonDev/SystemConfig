@echo off
setlocal enabledelayedexpansion


net session >nul 2>&1
if %errorlevel% neq 0 (
    echo This script requires administrative privileges. Restarting as administrator...
    echo.
    timeout /t 2 >nul
    :: Re-launch the script with administrative privileges
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit /b
)

cd %~dp0

call %~dp0\src\SelectUI.bat 
