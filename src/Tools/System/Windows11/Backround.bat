@echo off
cls
echo %cd%
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%cd%\src\IMG\Windows11.jpg" /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

taskkill /f /im explorer.exe
start explorer.exe
pause