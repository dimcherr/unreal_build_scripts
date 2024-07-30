@echo off

call %~dp0vars.bat %2

del "%ROOTDIR%\%PROJECT%\Source\%PROJECT%\Public\%1.h"
del "%ROOTDIR%\%PROJECT%\Source\%PROJECT%\Private\%1.cpp"

echo Entity %1 has been deleted in project %2!