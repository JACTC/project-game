@Echo off
cls
:yes
set /a loading= 1
goto loading
:loading
cls
set /a ruleta=%random% %%17 +1 
set /a speed=%random% %%5 +1
set /a loading=%loading% + %ruleta%
echo:
echo:
echo: 
echo Loading game: %loading% %% compleated
title Loading game: %loading% %% compleated
if %loading% GEQ 100 goto start
timeout %speed% /nobreak >null
goto loading
rem speed changed for testing reasons, nul for null
:start
ping 127.0.0.1 -n 1 -w 500> nul
set /a loop = 0
cls
cd %~dp0
set /p currentbalance=<money
set /p porcentcero=<lucky0
set /p porcentfive=<lucky5
set /p porcentonecero=<lucky10
set /p porcentfivecero=<lucky50
set /p porcentonecerocero=<lucky100
set /p porcenttwocerocero=<lucky200
set /a one = 5
title LUCKY GAME
cls
echo:
echo:
echo            WELCOME TO LUCKY
echo:
echo            CURRENT BALANCE: %currentbalance% POINTS
echo:
echo            CURRENT RATES:
echo:
rem 40%
echo                0   POINTS %porcentcero%%% CHANCE
rem 27%
echo                5   POINTS %porcentfive%%% CHANCE
rem 20%
echo                10  POINTS %porcentonecero%%% CHANCE
rem 10%
echo                50  POINTS %porcentfivecero%%% CHANCE
rem 2%
echo                100 POINTS %porcentonecerocero%%% CHANCE
rem 1%
echo                200 POINTS %porcenttwocerocero%%% CHANCE
echo:
echo:
echo            PLAYING USES 10 POINTS
echo:
echo            PRESS ENTER TO PLAY
pause >nul
goto checkmoney
:checkmoney
if %currentbalance% lss 10 ( goto nomoney )
set /a lssmoney=10
cls
echo:
echo:
echo        PLEASE WAIT WHILE WE PREPARE THE GAME
goto lssmoney
:lssmoney
if %lssmoney% GEQ %one% ( start /min lessm.bat ) else ( goto play)
set /a lssmoney = %lssmoney%-%one%
ping 127.0.0.1 -n 1 -w 500> nul
goto lssmoney
:play
set /a num=%random% %%100 +1
if %num% GEQ %porcentcero% goto cero
if %num% GEQ %porcentfive% goto five
if %num% GEQ %porcentonecero% goto ten
if %num% GEQ %porcentfivecero% goto fifty
if %num% GEQ %porcentonecerocero% goto onehoundreath
if %num% GEQ %porcenttwocerocero% goto twohoundreath
echo error
pause
goto start
:cero
echo 0
set /a loop = 0
goto rewardss
:five
set /a loop = 5
goto rewardss
:ten
set /a loop = 10
goto rewardss
:fifty
set /a loop = 50
goto rewardss
:onehoundreath
set /a loop = 100
goto rewardss
:twohoundreath
set /a loop = 200
goto rewardss
:loopo
if %loop% GEQ %one% ( start /min addm.bat ) else ( goto start)
set /a loop = %loop%-%one%
ping 127.0.0.1 -n 1 -w 500> nul
goto loopo
:rewardss
cls
echo:
echo:
echo            YOU WIN %loop% POINTS
echo:
echo:
echo        PRESS ENTER TO CLAIM YOUR PRIZE
pause
cls
echo:
echo:
echo        CLAIMING YOUR PRIZE, PLEASE WAIT
goto loopo
:nomoney
cls
echo:
echo:
echo        SORRY YOU DONT HAVE ENOUGH POINTS TO PLAY ):
echo:
echo:
echo                PRESS ENTER TO CONTINUE
pause >nul
goto start