@echo off
echo enter value for A (1 or 0)
set /p A=
echo enter value for B (1 or 0)
set /p B=
call :AND %A% %B% Z
echo Z= %Z%
pause
exit
:AND
setlocal
set A=%1
set B=%2
set Y=%3
set /a X=A+B
if /I %X% EQU 2 (set "Z=1") else (set "Z=0")
set X=set %Y%=%Z%
endlocal & %X%