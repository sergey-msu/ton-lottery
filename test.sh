#!/bin/bash

FIFT_PATH="/opt/ton/ton/crypto/fift"
FIFT_EXE_PATH="/opt/ton/build/crypto/fift"
TESTS_PATH="tests"

export FIFTPATH=$FIFT_PATH/lib

# build project
./build.sh
BUILD_STATUS=$?

# run tests
if [[ $BUILD_STATUS == 0 ]]; then
   echo "Run tests..."
   $FIFT_EXE_PATH -s $TESTS_PATH/lottery-unit-tests.fif
   echo "Run tests done"
fi
