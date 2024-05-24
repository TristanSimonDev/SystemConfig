@echo off
:start
cls


title Win10Selector

echo 1 = Taskbar DarkMode
echo 2 = Taskbar LightMode
echo 3 = Taskbar Transperency (on)
echo 4 = Taskbar Transperency (off)
echo 5 = Change Backround
echo 6 = 
echo 7 = 
echo 8 = 
echo 9 = 

echo.

set Selection=

set /p Selection=Enter The Program: 
if not defined Selection goto :start






if "%Selection%"=="1" (
    call src\Tools\System\Windows10\DarkMode.bat
)
if "%Selection%"=="2" (
    call src\Tools\System\Windows10\LightMode.bat
)
if "%Selection%"=="3" (
    call src\Tools\System\Windows10\TransperenceOn.bat
)

if "%Selection%"=="4" (
    call src\Tools\System\Windows10\TransperenceOff.bat
)

if "%Selection%"=="5" (
    call src\Tools\System\Windows10\Backround10.bat
)



goto :start
pause