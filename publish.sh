#!/bin/bash

FIFT_PATH="/opt/ton/ton/crypto/fift"
FIFT_EXE_PATH="/opt/ton/build/crypto/fift"
REQUESTS_PATH="requests"

WORKCHAIN=0

export FIFTPATH=$FIFT_PATH/lib

# build project
./build.sh
BUILD_STATUS=$?

# create publish boc
if [[ $BUILD_STATUS == 0 ]]; then
    echo "Publishing..."
    
    $FIFT_EXE_PATH -s $REQUESTS_PATH/lottery-publish.fif $WORKCHAIN
    
    echo "Publish done"
fi
