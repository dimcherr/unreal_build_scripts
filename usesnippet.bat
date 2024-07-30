@echo off

call %~dp0vars.bat %1

:: .h snippet
echo %1 | tr 'a-z' 'A-Z' > tmpFile
set /p booo= < tmpFile
set booo=%booo:~0,-1%
del tmpFile

sed -e 's/BOOO/%booo%/g' -e 's/FOOO/%2/g' ue_snippets\%3.h >> "%ROOTDIR%\%PROJECT%\Source\%PROJECT%\Public\%2.h"

:: .cpp snippet
echo %1 | tr 'a-z' 'A-Z' > tmpFile
set /p booo= < tmpFile
set booo=%booo:~0,-1%
del tmpFile

sed -e 's/BOOO/%booo%/g' -e 's/FOOO/%2/g' ue_snippets\%3.cpp >> "%ROOTDIR%\%PROJECT%\Source\%PROJECT%\Private\%2.cpp"