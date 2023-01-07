@echo off

cd /d %~dp0
color a

python --version 3>NUL
if %errorlevel% NEQ 0 goto errorNoPython
pip -v>NUL
if %errorlevel% NEQ 0 goto errorNoPip
python -m pip install --upgrade -r requirements.txt
cls
python -m main
pause
exit


:errorNoPython
echo Python is not installed on your system or not added to path!!!
pause
exit

:errorNoPip
echo Pip is not installed on your system or not added to path!!!
pause
exit
