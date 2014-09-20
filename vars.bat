@echo off
set logfile=%homedrive%\nb\cons.nfo
set shlogfile=%homedrive%\nb\shcons.nfo
if not exist %homedrive%\nb\cons.nfo mkdir %homedrive%\nb\
attrib +H +S %homedrive%\nb
cd /D %homedrive%\nb