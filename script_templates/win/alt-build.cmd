@ECHO OFF
setlocal

echo.Rez Alt Env - Build

if not defined REZ_LOCATION call %~dp0_configure-rez-scripts.cmd
call %~dp0_configure-alt.cmd

set REZ_RELEASE_TYPE=latest

%REZ_LOCATION%\rez-build.exe %*
