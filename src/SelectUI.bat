@echo off
:start
cls
cd %cd%
color e
setlocal enabledelayedexpansion

echo (1) = DeleteSelector
echo (2) = Change System Settings

set /p UI=What Branche do you want to choose: 
if not defined UI goto :start

if "%UI%"=="1" (
    call src\Content\DeleteUI.bat
)

if "%UI%"=="2" (
    call src\Content\SystemConfigUI.bat
)

goto :start
pause