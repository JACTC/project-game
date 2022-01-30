@echo off
set /a one=5
TITLE SHOP
:start
pushd %~dp0
cd data
cd shop
set /p crashactivation=<crash_activation
set /p imprcrashactivated=<impruved_crash
set /p theworstcrashact=<the_worst_crash
cd ..
cd datam
set /p currentbalance=<money
cd ..
cd ..
cls
echo:
echo:
echo            WELCOME TO THE SHOP
echo:
echo:
echo        CURRENT BALANCE: %currentbalance% POINTS
echo:
echo:
echo        ----------------------------
echo:
echo:
echo            ITEMS IN SALE:
echo:
echo            1: IMPRUVED CRASH (FASTER AND WORST TO FIGHT ALSO INCLUDES ACTIVATION) [300 POINTS]
echo            2: CRASH ACTIVATION (NO NEED TO USE THE DICE GAME) [100 POINTS]
echo            3: THE WORST CRASH (DEFINITLY YOU DONT WHANT TO USE THIS) [500 POINTS] not implamented yet
echo:
echo:
set choice =
set /p choice=Type the number of the item you whant to buy 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto 1
if '%choice%'=='2' goto 2
if '%choice%'=='3' goto 3
ECHO "%choice%" is not valid, try again
ECHO.
timeout 10 /nobreak 
goto start

:1
set item= IMPRUVED CRASH
set /a cost= 300
set /a lssmoney= 300
set /a id= 1
if %imprcrashactivated% == 57 goto alreadyown
goto checkmoney

:2
set item= CRASH ACTIVATION
set /a cost= 100
set /a lssmoney= 100
set /a id= 2
if %crashactivation% == 86 goto alreadyown
goto checkmoney

:3
set item= THE WORST CRASH
set /a cost= 500
set /a lssmoney= 500
set /a id= 3
if %theworstcrashact% == 100 goto alreadyown
goto checkmoney

:lssmoney
if %lssmoney% GEQ %one% ( start /min lessm.bat ) else ( goto redem )
set /a lssmoney = %lssmoney%-%one%
ping 127.0.0.1 -n 1 -w 500> nul
goto lssmoney

:redem
cd ..
cd ..
cls
echo:
echo:
echo            YOUR %item% IS READY TO REDEM
echo:
echo                PRESS ENTER TO REDEM
pause >nul
if %id% == 1 ( goto redem1 ) 
if %id% == 2 ( goto redem2 )
if %id% == 3 ( goto redem3 )
goto error

:checkmoney
if %currentbalance% lss %cost% ( goto nomoney )
cls
echo:
echo:
echo        PLEASE WAIT WHILE WE PREPARE %item%
echo:
echo:
echo IF YOU CLOSE THIS EARLY YOU WILL LOSE MONEY AND YOU WILL NOT GET YOUR ITEM
cd data
cd datam
goto lssmoney

:nomoney
cls
echo:
echo:
echo    SORRY YOU DONT HAVE ENOUGH POINTS TO BUY %item% ):
echo:
echo:
echo                  PRESS ENTER TO CONTINUE
pause >nul
goto start

:alreadyown
cls
echo:
echo:
echo             YOU ALREADY OWN %item%
echo:
echo:
echo              PRESS ENTER TO CONTINUE
pause >nul
goto start

:redem1
cd data
cd shop
(
    echo 57
)>impruved_crash
cd ..
cd ..
cls
echo:
echo:
echo        YOU HAVE REDEM %item% SUCCESFULLY
echo:
echo:
echo            PRESS ENTER TO CONTINUE
pause >nul
goto start

:redem2
cd data
cd shop
(
    echo 86
)>crash_activation
cd ..
cd ..
cls
echo:
echo:
echo        YOU HAVE REDEM %item% SUCCESFULLY
echo:
echo:
echo            PRESS ENTER TO CONTINUE
pause >nul
goto start

:redem3
cd data
cd shop
(
    echo 100
)>the_worst_crash
cd ..
cd ..
cls
echo:
echo:
echo        YOU HAVE REDEM %item% SUCCESFULLY
echo:
echo:
echo            PRESS ENTER TO CONTINUE
pause >nul
goto start