@echo off
:loop
taskkill -im LojamixPdvService.exe /f /t
timeout /t 300 /nobreak
goto loop
pause