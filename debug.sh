#!/bin/bash

FIFT_PATH="/opt/ton/ton/crypto/fift"
FIFT_EXE_PATH="/opt/ton/build/crypto/fift"
TESTS_PATH="tests"

# build project
./build.sh

export FIFTPATH=$FIFT_PATH/lib

# run tests
$FIFT_EXE_PATH -s $TESTS_PATH/lottery-debug.fif