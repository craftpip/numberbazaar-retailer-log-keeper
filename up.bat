@call %systemdrive%\nb\vars.bat
:upload
set err=yes
set str=%random%%random%%random%%random%%random%
copy %logfile% %str%.csv
echo put %str%.csv > temp.csv
echo quit >> temp.csv
::ftps -a -z -e:on -user:logging -password:logging -s:temp.txt ftp.numberbazaar.com
C:\nb\ftps.exe -a -z -e:on -user:rawlog -password:bt9ba48cvkil -s:C:\nb\temp.csv numberbazaar.com
echo the error level is : %ERRORLEVEL%
if %ERRORLEVEL%==0 set err=no
del temp.csv
del %str%.csv
if %err%==no exit
ping 122.222.222.222 -n 1 -w 1000
goto upload