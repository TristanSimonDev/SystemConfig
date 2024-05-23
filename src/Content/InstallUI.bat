@echo off
:start
cls
color a
setlocal enabledelayedexpansion

title Control Center
set Selection=

set /p Selection=Enter The Program: 
if not defined Selection goto :start

if "%Selection%"=="1" (
    call src\Tools\Delete\LocalTemp.bat
)
if "%Selection%"=="2" (
    call src\Tools\Delete\SystemTemp.bat
)
if "%Selection%"=="3" (
    call src\Tools\Delete\Prefetch.bat
)
if "%Selection%"=="4" (
    call DeleteSystem/GPU.bat
)
if "%Selection%"=="5" (
    call DeleteSystem/SystemTemp.bat
)
if "%Selection%"=="6" (
    call DeleteSystem/SystemTemp.bat
)
if /i "%Selection%"=="Exit" (
    call src/SelectUI.bat
)

    
pause