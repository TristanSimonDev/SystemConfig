@echo off
setlocal EnableDelayedExpansion

cls

set original_cd=%cd%
echo %cd%
title Deleting Pictures
set counter=0


rem Read the count and check if exists
if exist %original_cd%\src\User\Backend\Counters\count.json (
    for /f "usebackq tokens=2 delims=:}" %%x in ("%original_cd%\src\User\Backend\Counters\count.json") do (
        set /A current_count=%%x
    )
) else (
    set current_count=0
)

for /d %%a in (C:\Users\*) do (
	if exist "%%a\Pictures" (
		cd "%%a\Pictures\*"
		for /r %%i in (*) do (
            
			echo "%%i" [Deleted $~$ %date% at %time:~0,5%]  
			del "%%i"
			set /A counter+=1    	
		)
	)
)
            

set /A total_count=current_count+counter
echo Picture Option (5) >> %original_cd%\src\User\Backend\log\log.txt [has been Activated on ~ %date% at %time:~0,5%] [!counter! files got Terminated]
echo.
echo !counter! files got Terminated 
echo New total count: !total_count!
cd %original_cd%
echo { "count": !total_count! } > src\User\Backend\Counters\count_tmp.json
move /Y src\User\Backend\Counters\count_tmp.json src\User\Backend\Counters\count.json
pause
call src\Content\DeleteUI.bat
