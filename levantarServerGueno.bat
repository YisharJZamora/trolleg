@echo off

start /b cmd.exe /k "call levantarServidor.bat"

start chrome.exe -- http://localhost:8080/html/index.html
