@echo off

call %~dp0vars.bat %1

start "" "%UE5EDITOR_EXE%" "%UPROJECT_PATH%" %* -game -windowed -resx=1280 -resy=720 -log