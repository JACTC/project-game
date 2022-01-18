:start
@ECHO OFF
cls
title select game
echo select game
echo:
echo 1; tutorial
echo 2; dice
echo 3; settings
echo 4; uninstall 
echo 5; exit
echo:
set choice =
set /p choice=Type the number of the game 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto 1
if '%choice%'=='2' goto 2
if '%choice%'=='3' goto 3
if '%choice%'=='4' goto 4
if '%choice%'=='5' exit
ECHO "%choice%" is not valid, try again
ECHO.
timeout 10 /nobreak 
goto start
:2
echo perfect
pushd %~dp0
start ones.bat
exit
:1
echo error
pushd %~dp0
start startt.bat /min
goto start
:3
pushd %~dp0
start settings.bat
exit
:4
pushd %~dp0
start unins000.exe
exit