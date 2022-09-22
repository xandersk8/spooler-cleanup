@echo off
title FILA DE IMPRESSAO
mode con cols=70 lines=10
color 9F
net stop spooler
del /q %windir%\system32\spool\printers
echo Arquivos da fila de impressao foram deletados!
echo ..............................................
net start spooler
pause
