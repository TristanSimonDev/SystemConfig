@echo off
:start
cls
color a
echo %cd%
setlocal enabledelayedexpansion

title Control Center
set Selection=
echo 1 =  DarkMode
echo 2 =  LightMode
echo 3 = Trancperency On
echo 4 = Trancperency Off
echo 5 = Enable
echo 6 = Enable
echo 7 = Enable
echo Win11 = Settings for Windows 11
echo.

set /p Selection=Enter The Program: 
if not defined Selection goto :start





if "%Selection%"=="1" (
    call src\Tools\System\DarkMode.bat
)
if "%Selection%"=="2" (
    call src\Tools\System\WhiteMode.bat
)
if "%Selection%"=="3" (
    call src\Tools\System\TransperenceOn.bat
)

if "%Selection%"=="4" (
    call src\Tools\System\TransperenceOff.bat
)

if /i "%Selection%"=="Win11" (
    call src\Content\Win11UI.bat
)

if /i "%Selection%"=="Exit" (
    call src/SelectUI.bat
)

goto :start
pause