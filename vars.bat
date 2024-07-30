@echo off

:: set ROOTDIR=%~dp0
:: set ROOTDIR=%ROOTDIR:~0,-1%
set ROOTDIR=C:\Users\Dimka\Desktop\dev\MyDearProject\gitrep\

set PROJECT=%1
set UPROJECT_PATH=%ROOTDIR%\%PROJECT%\%PROJECT%.uproject

set UE5_DIR=C:\Program Files\Epic Games\UE_5.4
set UE5EDITOR_EXE=%UE5_DIR%\Engine\Binaries\Win64\UnrealEditor.exe
set BUILD_BAT=%UE5_DIR%\Engine\Build\BatchFiles\Build.bat