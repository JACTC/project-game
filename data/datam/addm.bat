set one=1
%~dp0
for /f "delims=" %%x in (money) do set mon= %%x
set /a money= %mon%+%one%
(
    echo %money%
)>money
exit