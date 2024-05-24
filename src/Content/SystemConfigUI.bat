@echo off
:start
cls
color a
setlocal enabledelayedexpansion

title Control Center
set Selection=
echo Win10 = Settings for Windows 10
echo Win11 = Settings for Windows 11
echo.

set /p Selection=Enter The Program: 
if not defined Selection goto :start




if /i "%Selection%"=="Win10" (
    call src\Content\Win10UI.bat
)


if /i "%Selection%"=="Win11" (
    call src\Content\Win11UI.bat
)

if /i "%Selection%"=="Exit" (
    call src/SelectUI.bat
)

goto :start
pause