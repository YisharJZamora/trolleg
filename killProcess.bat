@echo off
title PortKiller
:menu
echo * ASISTENTE PARA ACABAR CON ESE PINCHE PROCESO *
echo *\--------------------------------------------/*
echo.
set /p por=inserte puerto:
netstat -ano | findstr "%por%"
echo.
set /p pid=inserte la ID del Proceso:
tasklist | findstr "%pid%"

:decision
echo.
echo 	Desea matar este proceso?
echo.
echo 1)Destruirlo	0)Rajarse
set /p op=
if %op%==1 taskkill /PID %pid% && goto fuckyeah
if %op%==0 goto fuckoff

title "ErrorCode1-Invalid_Option"
echo.
echo Por favor, escoja una opcion valida
pause>nul
cls
goto menu

:fuckyeah
cls
echo Despidete de ese proceso impio
pause>nul
cls&exit

:fuckoff
cls
echo Ambos sabiamos que no te atreverias
pause>nul
cls&exit