@call %systemdrive%\nb\vars.bat
set str=%random%%random%%random%%random%
set str=%str%,%username%
set str=%str%,i
set str=%str%,%date%
set str=%str%,%time%
copy %logfile%+%shlogfile% %logfile%
::copy %shlogfile% %logfile%
echo %str% >> %logfile%
start startevnt.vbs
start startup.vbs