echo.Rez Configure for Alt Environment

if not defined REZ_DEV_PACKAGES if exist %_REZ_ROOT%\packages\dev set REZ_DEV_PACKAGES=%_REZ_ROOT%\packages\dev

if defined REZ_DEV_PACKAGES if defined REZ_CONFIG_FILE set REZ_CONFIG_FILE=%REZ_CONFIG_FILE%;%_REZ_ROOT%\configs\rezconfig_dev.py
if defined REZ_DEV_PACKAGES if not defined REZ_CONFIG_FILE set REZ_CONFIG_FILE=%_REZ_ROOT%\configs\rezconfig_dev.py

if defined REZ_DEV_PACKAGES echo.Using Dev Packages %REZ_DEV_PACKAGES%
