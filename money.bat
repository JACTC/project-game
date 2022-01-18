:start
rem start section

@echo off
cls
echo:
echo:
echo             BANK
echo:
echo:
echo              Options
echo                1:Balance
echo                2:Lucky
echo                3:
echo                4:
echo                5:exit
echo:
echo:

rem select menu brain

set choice =
set /p choice=Type the number of the game  
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto one
if '%choice%'=='2' goto two
if '%choice%'=='3' goto one
if '%choice%'=='4' goto one
if '%choice%'=='5' exit
ECHO "%choice%" is not valid, try again
ECHO.
timeout 10 /nobreak 
goto start


:one
rem BALANCE SECTION

REM GOES TO THE RIGHT FOLDER

pushd %~dp0
cd data
cd datam

REM READ THE FILE AND PUT IT ON THE VARIABLE
for /f "delims=" %%x in (money) do set moneys= %%x
REM GOES BACK TO THE NORMAL FOLDER

cd ..
cd ..

REM SHOWS THE BALANCE

cls
echo:
echo:
echo             YOUR BALANCE IS: %moneys% 
echo:
echo:
pause
goto start


:two
rem app lucky game section

rem goes to the right folder

pushd %~dp0
cd data
cd datam

rem starts the app

start lucky.bat

rem goes back to the original folder

cd ..
cd ..

rem goes back to the start

goto start