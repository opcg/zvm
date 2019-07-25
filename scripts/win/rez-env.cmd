@ECHO OFF
if not defined REZ_LOCATION call %~dp0_configure-rez-scripts.cmd

%REZ_LOCATION%\rez-env.exe %*
