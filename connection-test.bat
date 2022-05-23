@echo off
title Connection Test
cls

echo set connectionTest="true">"system\settings\prompt-respond.bat"

echo To stop the test, press any key.
pause

echo set connectionTest="false">"system\settings\prompt-respond.bat"
