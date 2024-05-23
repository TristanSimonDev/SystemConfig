@echo off
:start
cls
echo %cd%
cd %cd%
color e
setlocal enabledelayedexpansion

echo (1) = DeleteSelector
echo (2) = InternetSelector
echo (3) = ProgrammSelector
echo (4) = Change System Settings (Under review)

set /p UI=What Branche do you want to choose: 
if not defined UI goto :start

if "%UI%"=="1" (
    call src\Content\DeleteUI.bat
)

if "%UI%"=="2" (
    call src\Content\InternetUI.bat
)

if "%UI%"=="3" (
    call src\Content\ProgrammUI.bat
)

if "%UI%"=="4" (
    call src\Content\SystemConfigUI.bat
)

goto :start
pause