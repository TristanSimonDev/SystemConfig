@echo off
:start
cls


title Win11Selector

echo %cd%
set Selection=

set /p Selection=Enter The Program: 
if not defined Selection goto :start





if "%Selection%"=="1" (
    call src\Tools\System\Windows11\Taskbar.bat
)

if "%Selection%"=="2" (
    call src\Tools\System\Windows11\TaskbarReverse.bat
)

goto :start
pause