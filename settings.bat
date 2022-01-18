:start
cls
@echo off
echo:
echo:
echo settings
echo:
echo 1:Dice
echo:2:exit
set choice =
set /p choice=Type the number of the game 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto 1
if '%choice%'=='2' goto 2
ECHO "%choice%" is not valid, try again
timeout 5 >null
goto start
:1
cd settings
set /p dice=Please write how many dices you whant to rool
(
    echo %dice%
)>dicecuantity.txt
cd ..
echo Finish
echo 
timeout 5 <null
goto start
:2
start two.bat
exit