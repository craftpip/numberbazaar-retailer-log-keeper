@call %systemdrive%\nb\vars.bat
:event
set str=%random%%random%%random%
set str=%str%,%username%
set str=%str%,o
set str=%str%,%date%
set str=%str%,%time%
echo %str% > %shlogfile%
ping 172.0.0.2 -n 1 -w 5000
goto event