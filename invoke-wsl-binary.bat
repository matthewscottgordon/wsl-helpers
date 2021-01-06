@echo off

rem Run a single command in WSL.
rem Passes all arguments through th invoke-linux-binary-from-windows
rem bash script which converts DOS paths to WSL paths (Replace "X:"
rem with "/mnt/x" and "\" with "/").

setlocal EnableExtensions EnableDelayedExpansion

rem Enclose all arguments in single quotes so that they are passed
rem to invoke-linux-binary-from-windows intact and unmodified.
set args=
for %%x in (%*) do (
    set args=!args! '%%~x'
)

wsl.exe -- ~/.local/bin/invoke-linux-binary-from-windows !args!
