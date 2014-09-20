@echo off
title Installing client
cd /D %homedrive%\nb
color F0
@reg add HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run /v nb /t reg_sz /f /d C:\nb\init.exe
echo ================================================================
echo ================================================================
echo                             Configured.
echo                   Please restart the computer.
echo ================================================================
echo =================PRESS ANY KEY TO START PROGRAM=================
echo =========================================== www.numberbazaar.com
pause > nul
start c:\nb\init.exe
exit