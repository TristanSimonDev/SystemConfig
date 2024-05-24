@echo off
cls
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 0 /f
taskkill /f /im explorer.exe
start explorer.exe
pause
