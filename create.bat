@echo off

set snippetfile=usesnippet.bat

IF "%1"=="enum" (
	set snippetfile=usesnippet_h.bat
)
IF "%1"=="table" (
	set snippetfile=usesnippet_h.bat
)
IF "%1"=="interface" (
	set snippetfile=usesnippet_h.bat
)

call %~dp0%snippetfile% %3 %2 %1

echo %1 %2 has been created in project %3!