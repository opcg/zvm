#!/usr/bin/env bash

source $1/_rez_version.sh

pushd $1/../..
_REZ_ROOT=$(pwd)
REZ_LOCATION=${_REZ_ROOT}/versions/${REZ_SCRIPTS_VERSION}/bin/rez

echo "Using Rez @ ${REZ_LOCATION}"

echo "Using Rez @ ${REZ_LOCATION}"

if [[ -z "${REZ_CONFIG_FILE+xxx}" ]]; then
    export REZ_CONFIG_FILE=${_REZ_ROOT}/configs/baseconfig_osx.py:${_REZ_ROOT}/configs/rezconfig.py;
else
    export REZ_CONFIG_FILE=${REZ_CONFIG_FILE}:${_REZ_ROOT}/configs/rezconfig.py
fi

echo "Using Rez Configs ${REZ_CONFIG_FILE}"

if [[ -z "${REZ_LOCAL_CONFIGS+xxx}" ]]; then export REZ_LOCAL_CONFIGS=${_REZ_ROOT}/configs; fi

popd

#if exist %_REZ_ROOT%\extras\graphviz set PATH=%PATH%;%_REZ_ROOT%\extras\graphviz\bin
