@echo off

sc stop GameInputSvc >nul 2>&1
sc stop GameInputRedistService >nul 2>&1

sc config GameInputSvc start= disabled
sc config GameInputRedistService start= disabled