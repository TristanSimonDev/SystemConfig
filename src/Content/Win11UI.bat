@echo off
:start
cls


title Win11Selector

echo 1 = Default Taskbar
echo 2 = Formated Taskbar
echo 3 = Change Backround
echo 4 = 
echo 5 = 
echo 6 = 
echo 7 = 
echo 8 = 
echo 9 = 

echo.


set Selection=

set /p Selection=Enter The Program: 
if not defined Selection goto :start




if "%Selection%"=="1" (
    call src\Tools\System\Windows11\Taskbar.bat
)

if "%Selection%"=="2" (
    call src\Tools\System\Windows11\TaskbarReverse.bat
)

if "%Selection%"=="3" (
    
)

goto :start
pause