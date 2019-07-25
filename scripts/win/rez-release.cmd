@ECHO OFF
setlocal

if not defined REZ_LOCATION call %~dp0_configure-rez-scripts.cmd
set REZ_RELEASE_TYPE=latest

%REZ_LOCATION%\rez-release.exe %*
