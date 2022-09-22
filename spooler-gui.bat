@echo off
mode con cols=59 lines=12
title Fila de Impressao
color F0

:MENU
CLS

echo.
echo                     FILA DE IMPRESSAO
echo  ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo  º		1 . Stop    - Fila de Impressao         º
echo  º		2 . Start   - Fila de Impressao         º
echo  º		3 . Restart - Fila de Impressao         º 
echo  º		4 . Cleaner - Fila de Impressao         º
echo  º		0 . Exit    - Fila de Impressao         º
echo  ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
echo.

REM ALT + 172 = ¼
REM ALT + 175 = »

SET INPUT=
SET /P INPUT=Selecione uma Opcao: 

IF /I '%INPUT%'=='1' GOTO Stop
IF /I '%INPUT%'=='2' GOTO Start
IF /I '%INPUT%'=='3' GOTO Restart
IF /I '%INPUT%'=='4' GOTO Clean
IF /I '%INPUT%'=='0' GOTO EXIT

CLS

GOTO MENU

:Stop
CLS
net stop spooler
pause
GOTO MENU

:Start
CLS
net start spooler
pause
GOTO MENU

:Restart
CLS
net stop spooler
net start spooler
pause
GOTO MENU

:Clean
CLS
net stop spooler
del /q %windir%\system32\spool\printers
echo Os Arquivos da Fila de Impressao foram deletados!
echo ..............................................
echo.
net start spooler
pause
GOTO MENU

:EXIT
exit
