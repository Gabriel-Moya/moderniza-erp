@echo off
%~d0
CD %~dp0

echo.
echo Lojamix Moderniza install by Gabriel-Moya
echo https://github.com/Gabriel-Moya
echo.

::====================INSTALL SSMS====================
set IS_X64=0 && if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set IS_X64=1) else (if "%PROCESSOR_ARCHITEW6432%"=="AMD64" (set IS_X64=1))

if "%IS_X64%" == "1" goto X64

cls
echo.
echo Lojamix Moderniza install by Gabriel-Moya
echo https://github.com/Gabriel-Moya
echo.
echo Installing SSMS
echo.
start /wait SSMS-Setup-PTB-16.5.3_x86.exe /install /passive
del "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup\install-ssms.bat"
goto END

:X64

cls
echo.
echo Lojamix Moderniza install by Gabriel-Moya
echo https://github.com/Gabriel-Moya
echo.
echo Installing SSMS
echo.
start /wait SSMS-Setup-PTB-18.9.2_x64.exe /install /passive
del "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup\install-ssms.bat"
goto END

:END

cd "C:\Lojamix_Install\"
start LojamixWebInstaller.exe /passive /norestart

echo.
echo Installation completed successfully

exit