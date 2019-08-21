#!/usr/bin/env bash
: # This is a special script which intermixes both sh
: # and cmd code. It is written this way because it is
: # used in system() shell-outs directly in otherwise
: # portable code. See https://stackoverflow.com/questions/17510688
: # for details.
:; if [ -z 0 ]; then
  @echo off
  goto :WINDOWS
fi

if [ "$#" -ne 1 ]; then
  echo "usage: $0 <install path>"
  exit 1
fi

:# https://stackoverflow.com/questions/59895/
export ROOTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

if [[ "$OSTYPE" == "linux-gnu" ]]; then
        echo "Running Linux Install"
elif [[ "$OSTYPE" == "darwin"* ]]; then
        echo "Running Mac Install"
        ${ROOTDIR}/installer/install_osx.sh "$@"

fi

exit

:WINDOWS
if [%2]==[] (
  SETLOCAL enabledelayedexpansion
  set usage="usage: %0 <firstArg> <secondArg>"
  @echo !usage:"=!
  exit /b 1
)

echo.Running Windows Install
