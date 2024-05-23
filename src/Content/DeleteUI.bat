@echo off
:start
cls
color a
echo %cd%
setlocal enabledelayedexpansion

title Control Center
set Selection=
echo 1 = DeleteLocalTemp    --Cache
echo 2 = DeleteSystemTemp   --Cache
echo 3 = DeletePrefetch     --Cache
echo 4 = DeleteGPU-NVIDIA   --Cache
echo 5 = DeletePictures     --NonCache
echo 6 = DeleteVideos       --NonCache
echo 7 = DeleteMusic        --NonCache
echo 8 = DeleteRecycleBin   --Cache [need fix]
echo.

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
    call src\Tools\Delete\GPU.bat
)
if "%Selection%"=="5" (
    call src\Tools\Delete\Pictures.bat
)
if "%Selection%"=="6" (
    call src\Tools\Delete\Videos.bat
)

if "%Selection%"=="7" (
    call src\Tools\Delete\Music.bat
)

if "%Selection%"=="8" (
    call src\Tools\Delete\RecycleBin.bat
)


if /i "%Selection%"=="Exit" (
    call src/SelectUI.bat
)

goto :start
pause