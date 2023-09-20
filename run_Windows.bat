@echo off
echo Opening allwinsChatGPT...

if not exist "%~dp0\allwinsChat\Scripts" (
    echo Creating venv...
    python -m venv allwinsChat
    
    cd /d "%~dp0\allwinsChat\Scripts"
    call activate.bat
    
    cd /d "%~dp0"
    pip install -r requirements.txt
)

goto :activate_venv

:launch
%PYTHON% allwinsChatbot.py %*
pause

:activate_venv
set PYTHON="%~dp0\allwinsChat\Scripts\Python.exe"
echo venv %PYTHON%
goto :launch
