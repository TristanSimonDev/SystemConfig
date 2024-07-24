@echo off
setlocal enabledelayedexpansion

for /f "tokens=2 delims=:" %%p in ('ipconfig ^| findstr IPv4') do (
    echo %%p
)

endlocal
pause
