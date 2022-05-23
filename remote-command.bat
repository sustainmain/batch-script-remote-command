@echo off
title Remote Command
cls

echo set terminate="false">"system\settings\prompt-terminate.bat"

:LOOP
call "system\settings\prompt-terminate.bat"
call "system\settings\prompt-respond.bat"
if %terminate% == "true" (exit)
if %connectionTest% == "true" (goto RESPOND)
if exist "New Text Document.txt" (goto RUN)
if exist "Run.txt" (goto RUN)
timeout /t 1 /nobreak>NUL
goto LOOP

:RUN
call "system\settings\settings.bat"
call "system\command.bat"
goto LOOP

:RESPOND
call "system\respond.bat"
goto RESPONSEWAIT

:RESPONSEWAIT
call "system\settings\prompt-respond.bat"
if %connectionTest% == "true" (goto RESPONSEWAIT)
goto LOOP
