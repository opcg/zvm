@ECHO OFF
setlocal

if not defined REZ_SCRIPTS_VERSION call %~dp0_configure-rez-scripts.cmd
set REZ_RELEASE_TYPE=stable

%REZ_LOCATION%\rez-release.exe %*
