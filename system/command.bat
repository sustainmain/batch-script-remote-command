start "" %program%

timeout /t %delay% /nobreak>NUL
if %autoTerminate% == "true" (exit)
