#!/usr/bin/env bash

echo "In OSX Installer"
echo "Root Dir ${ROOTDIR}"
echo "Install Dir ${1}"

ROOTDIR=${ROOTDIR}
INSTALLDIR=${1}

pushd ${ROOTDIR}/build_python

python3 ${ROOTDIR}/build_python/build-macos.py

popd
