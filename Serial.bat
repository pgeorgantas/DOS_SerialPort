@echo off
cls
echo Simple COM Interface for DOS
SET/P COM=Input port number (ex.: 1):
MODE COM%COM%: baud=9600 parity=N data=8 stop=1
:LOOP
    SET/P content=Input data to send:
    echo %content% > com%COM%
    copy com%COM% seriallog.log
goto LOOP

