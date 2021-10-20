@echo off
%~d0
CD %~dp0

echo.
echo Lojamix Moderniza install by Gabriel-Moya
echo https://github.com/Gabriel-Moya
echo.

echo Escolha a versao a ser instalada:
echo.
echo [1] - SQL 2008 x86
echo [2] - SQL 2008 x64
echo [3] - SQL 2012 x64
echo [4] - SQL 2014 x64
echo [5] - SQL 2017 x64
echo [6] - SQL 2019 x64
echo.
set /p opcao= 
echo.

cls
echo.
echo Lojamix Moderniza install by Gabriel-Moya
echo https://github.com/Gabriel-Moya
echo.

::====================INSTALL RUNTIMES C++====================
CALL Visual-C-Runtimes-All-in-One-Jul-2021/install_all.bat

cd ..

::====================INSTALL NET FRAMEWORK====================
cls
echo.
echo Lojamix Moderniza install by Gabriel-Moya
echo https://github.com/Gabriel-Moya
echo.
echo Installing .NET Framework 4.8
echo.
start /wait ndp48-x86-x64-allos-enu.exe /passive /norestart

::====================INSTALL LOJAMIX====================
if "%opcao%" == "1" goto op1
if "%opcao%" == "2" goto op2
if "%opcao%" == "3" goto op3
if "%opcao%" == "4" goto op4
if "%opcao%" == "5" goto op5
if "%opcao%" == "6" goto op6

:op1
cls
echo.
echo Lojamix Moderniza install by Gabriel-Moya
echo https://github.com/Gabriel-Moya
echo.
echo Extracting Lojamix_Install
start /wait Lojamix_Web_Installer_SQL_2008_x86.exe /passive /s /norestart
goto CREATESSMSBAT


:op2
cls
echo.
echo Lojamix Moderniza install by Gabriel-Moya
echo https://github.com/Gabriel-Moya
echo.
echo Extracting Lojamix_Install
start /wait Lojamix_Web_Installer_SQL_2008_x64.exe /passive /s /norestart
goto CREATESSMSBAT


:op3
cls
echo.
echo Lojamix Moderniza install by Gabriel-Moya
echo https://github.com/Gabriel-Moya
echo.
echo Extracting Lojamix_Install
start /wait Lojamix_Web_Installer_SQL_2012_x64.exe /passive /s /norestart
goto CREATESSMSBAT


:op4
cls
echo.
echo Lojamix Moderniza install by Gabriel-Moya
echo https://github.com/Gabriel-Moya
echo.
echo Extracting Lojamix_Install
start /wait Lojamix_Web_Installer_SQL_2014_x64.exe /passive /s /norestart
goto CREATESSMSBAT


:op5
cls
echo.
echo Lojamix Moderniza install by Gabriel-Moya
echo https://github.com/Gabriel-Moya
echo.
echo Extracting Lojamix_Install
start /wait Lojamix_Web_Installer_SQL_2017_x64.exe /passive /s /norestart
goto CREATESSMSBAT


:op6
cls
echo.
echo Lojamix Moderniza install by Gabriel-Moya
echo https://github.com/Gabriel-Moya
echo.
echo Extracting Lojamix_Install
start /wait Lojamix_Web_Installer_SQL_2019_x64.exe /passive /s /norestart
goto CREATESSMSBAT


::====================CRIA BAT SSMS INICIALIZACAO====================
:CREATESSMSBAT
echo start cmd /c "%__CD__%install-ssms.bat" > "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup\install-ssms.bat"
shutdown -r -f -t 0