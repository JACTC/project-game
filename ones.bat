cls
title DICE GAME
%~dp0
cd settings
for /f "delims=" %%x in (dicecuantity.txt) do set numr= %%x
echo %numr%
cd ..
set six=6
Set /a numberandom= %numr%*%six%
echo %dicenumber%
@echo off 
cls
set cuantity= 0
set two= 1
goto start
set rms= 'STOP clicking'
:messages
set /a message=%random% %%10 +1 
if '%message%'=='1' set rms= you aren't funy 
if '%message%'=='2' set rms= STOP!!!! 
if '%message%'=='3' set rms= you will die
if '%message%'=='4' set rms= you are destroying me
if '%message%'=='5' set rms= stop clicking
if '%message%'=='6' set rms= AUCH!!
if '%message%'=='7' goto seven
if '%message%'=='8' goto eight
if '%message%'=='9' goto nine
if '%message%'=='10' set rms= THIS ISNT A CLICKER GAME
goto secret
:seven
cls
echo:
echo:
echo STOP OR I WILL TURN OFF YOUR COMPUTER
echo:
echo:
pause
shutdown /s /c "we told you" /t 3
exit
:eight
cls
echo:
echo:
echo STOP OR I WILL RESTART YOUR COMPUTER
echo:
echo:
pause
shutdown /r /c "we told you" /t 3
exit
:nine
cls
echo:
echo:
echo STOP OR I WILL DO THE COMPUTER GO VERY SLOW
echo:
echo:
pause
pushd %~dp0
start die.bat
exit
:start
echo:
set /a num=%random% %% %numberandom% +1
echo %num%
set /a cuantity= %cuantity%+%two%
title clicked %cuantity% times
echo You have cliked %cuantity% times
echo:
echo:
if '%cuantity%'=='50' goto starter
pause 
cls
goto start
:starter
set /a cuantity= %cuantity%+%two% 
title clicked %cuantity% times
cls
echo:
echo:
echo %rms% >null
echo:
echo You have clicked %cuantity% times
echo:
echo:
pause
goto messages
:secret
set /a cuantity= %cuantity%+%two% 
title clicked %cuantity% times
cls
echo:
echo:
echo %rms% 
echo:
echo You have clicked %cuantity% times
echo:
echo:
pause
goto messages
:exit