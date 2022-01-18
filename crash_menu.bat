@echo OFF
title CRASH MENU 
:start
pushd %~dp0
cd data
cd shop
set /p crashactivation=<crash_activation
set /p imprcrashactivated=<impruved_crash
set /p theworstcrashact=<the_worst_crash
cd ..
cd ..
cls
echo:
echo:
echo            WELCOME TO THE CRASH MENU
echo:
echo:
echo -------------------------------------------------
echo:
echo:
echo                    OPTIONS
echo:
echo                     1:ACTIVATE CRASH
echo                     2:ACTIVATE IMPRUVED CRASH
echo                     3:ACTIVATE THE WORST CRASH not implemented yet
echo                     4:EXIT
echo:
echo:
set choice =
set /p choice=Type the number of the item you whant to use 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto 1
if '%choice%'=='2' goto 2
if '%choice%'=='3' goto 3
if '%choice%'=='areyoustupid' goto stupid
if '%choice%'=='4' exit
ECHO "%choice%" is not valid, try again
ECHO.
timeout 10 /nobreak 
goto start

:1
set item= CRASH ACTIVATION
if %crashactivation% NEQ 86 goto notown
cls
echo:
echo:
echo            PRESS ENTER TO START A NORMAL CRASH
echo:
echo          DISCLAIMER THIS CAN HARM SLOW COMPUTERS
echo:
echo:
pause >nul
pushd %~dp0
:torture
pause
start die.bat /min
timeout 15 /nobreak >nul
goto torture

:2
set item= IMPRUVED CRASH
if %imprcrashactivated% NEQ 57 goto notown
cls
echo:
echo:
echo            PRESS ENTER TO START A IMPRUVED CRASH
echo:
echo          DISCLAIMER THIS CAN HARM SLOW COMPUTERS
echo:
echo:
pause >nul
pushd %~dp0
start /min impruved_crash.bat
timeout 5 >nul
start /min die.bat
:storm
start /min prueva.vbs
goto storm

:3
set item= THE WORST CRASH
if %theworstcrashact% NEQ 100 goto notown
cls
echo:
echo:
echo        SORRY, THIS IS NOT AVAILABLE IN THIS VERSION
echo:
echo             DISCLAIMER THIS CAN HARM COMPUTERS
echo:
echo:
pause >nul
goto start
pushd %~dp0

:stupid
cls
echo:
echo:
echo      YOU STARTED "AREYOUSTUPID?" GOOD LUCK CLOSING IT
echo:
echo    DISCLAIMER THIS CAN HARM SLOW COMPUTERS BUT ITS TO LATE
echo:
echo:
pushd %~dp0
:stupidloop
start areyoustupid.vbs
timeout 15 >nul
goto stupidloop

:notown
cls
echo:
echo:
echo        SORRY YOU DONT OWN %item% PLEASE BUY IT AT THE SHOP
echo:
echo:
echo                    PRESS ENTER TO CONTINUE
pause >nul
goto start