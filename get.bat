@call %systemdrive%\nb\vars.bat
set tempfilename=%username%_nb_%random%.txt
echo ...... Generating file
@copy %logfile% %systemdrive%%homepath%\Desktop\%tempfilename%
if %ERRORLEVEL% == 0 goto suc
goto err
:err
echo .
echo ...... there was an error copying file.
echo ...... press any key to exit.
exitd
:suc
echo .
echo ...... %tempfilename% has been successfully generated to desktop.
echo ...... press any key to exit
exit