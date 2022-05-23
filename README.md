# batch-script-remote-command

This is an old project I made to run commands on other computers from my computer using my school's shared drive. 

## Getting started

1. Edit `system\settings\settings.bat`.
    * if `autoTerminate` is true, all the connected computers will terminate the remote command program after the command finishes
    * `delay` specifies the number of seconds to wait between each time the command is run
    * `program` specifies what file will be opened by `system\command.bat`
2. Make sure `terminate` is set to `"false"` in `system\settings\prompt-terminate.bat`
3. Run `remote-command.bat` on each computer you want to run commands
    * If you want, you can make this script start automatically, like every time the computer boots or every time you log in.
4. Create `Untitled Text Document.txt` or `Run.txt` to trigger all the connected computers to run the command

To see which computers are connected, run `connection-test.bat`, wait a few seconds, press a key to terminate the test, and open `responses.txt`. This file will have many duplicate entries, so it's most useful just to make sure that there are any computers connected.

To terminate the remote command program on all the connected computers, run `remote-termination.bat`. This sets `terminate` to `"true"` in `system\settings\prompt-terminate.bat`, and you'll have to reset it manually. To prevent accidents, there is no way to set it automatically.

To change the command (not the program) run by the computers, edit `system\command.bat`
