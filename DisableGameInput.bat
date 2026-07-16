@echo off

rem Disables the Microsoft GameInput & associated redist. service so I can play games without annoying input/performance issues.

sc stop GameInputSvc >nul 2>&1
sc stop GameInputRedistService >nul 2>&1

sc config GameInputSvc start= disabled
sc config GameInputRedistService start= disabled