@echo off

call %~dp0vars.bat %3

sed -e 's/%1/%2/g' "%ROOTDIR%\%PROJECT%\Source\%PROJECT%\Public\%1.h" >> "%ROOTDIR%\%PROJECT%\Source\%PROJECT%\Public\%2.h"
sed -e 's/%1/%2/g' "%ROOTDIR%\%PROJECT%\Source\%PROJECT%\Private\%1.cpp" >> "%ROOTDIR%\%PROJECT%\Source\%PROJECT%\Private\%2.cpp"

echo Entity %1 has been copied and renamed to %2 in project %3!