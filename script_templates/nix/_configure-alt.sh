#!/usr/bin/env bash


pushd $1/../..
_REZ_ROOT=$(pwd)
REZ_LOCATION=${_REZ_ROOT}/versions/${REZ_SCRIPTS_VERSION}/bin/rez



if [ -z "${REZ_DEV_PACKAGES+xxx}" ]; then export REZ_DEV_PACKAGES=${_REZ_ROOT}/packages/dev; fi

if [ -z "${REZ_CONFIG_FILE+xxx}" ]; then
    export REZ_CONFIG_FILE=${_REZ_ROOT}/configs/rezconfig_dev.py
else
    export REZ_CONFIG_FILE=${REZ_CONFIG_FILE}:${_REZ_ROOT}/configs/rezconfig_dev.py
fi

echo "Using Rez Dev Packages @ ${REZ_DEV_PACKAGES}"
echo "Using Rez Configs @ ${REZ_CONFIG_FILE}"

popd

#echo.Rez Configure for Fx Dev Environment
#if not defined REZ_DEV_PACKAGES if exist %_REZ_ROOT%\packages\dev set REZ_DEV_PACKAGES=%_REZ_ROOT%\packages\dev
#if defined REZ_DEV_PACKAGES if defined REZ_CONFIG_FILE set REZ_CONFIG_FILE=%REZ_CONFIG_FILE%;%_REZ_ROOT%\configs\rezconfig_dev.py
#if defined REZ_DEV_PACKAGES if not defined REZ_CONFIG_FILE set REZ_CONFIG_FILE=%_REZ_ROOT%\configs\rezconfig_dev.py
#if defined REZ_DEV_PACKAGES echo.Using Dev Packages %REZ_DEV_PACKAGES%
