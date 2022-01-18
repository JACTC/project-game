@Echo off
:yes
set /a loading= 1
goto loading
:loading
cls
set /a tutorial=%random% %%17 +1 
set /a speed=%random% %%3 +1
set /a loading=%loading% + %tutorial%
echo:
echo:
echo: 
echo Loading: %loading% %% compleated
title Loading: %loading% %% compleated
if %loading% GEQ 100 goto start
timeout %speed% /nobreak >null
goto loading
:start
title TUTORIAL
cls
echo:
echo:
echo:
echo WELCOME TO THE TUTORIAL
echo:
echo:
echo:
echo TO START WRITE THE NUMBER OF WHAT YOU WHANT TO LEARN ABOUT
echo:
echo:
echo:
echo 0:ALL
echo 1:DICE GAME
echo 2:
echo 3:
echo:
echo:
echo:
set choice =
set /p choice=Type the number of the tutorial you shan't to see 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto 1
if '%choice%'=='2' goto 2
if '%choice%'=='3' goto 3
if '%choice%'=='0' goto 0
ECHO "%choice%" is not valid, try again
timeout 5 /nobreak
goto start
:0
Start /wait dicetutorial.bat
echo next step: hello
Timeout 10 /nobreak
Exit
:1
Start dicetutorial.bat
exit