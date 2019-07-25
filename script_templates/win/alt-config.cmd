@ECHO OFF
setlocal

echo.Rez Alt Env

if not defined REZ_LOCATION call %~dp0_configure-rez-scripts.cmd
call %~dp0_configure-alt.cmd

%REZ_LOCATION%\rez-config.exe %*
