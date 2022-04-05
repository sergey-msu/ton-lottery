#!/bin/bash

FUNC="/opt/ton/build/crypto/func"
STD_LIB="/opt/ton/ton/crypto/smartcont/stdlib.fc"
OUT_PATH="out"

# build func source to output fift
COMPILATION_RESULT=$( \
   $FUNC -SPA $STD_LIB ./lottery-consts.fc ./lottery-utils.fc ./lottery-getters.fc ./lottery-main.fc \
   -o $OUT_PATH/lottery-code.fif 2>&1 \
)

echo $COMPILATION_RESULT

if [[ $COMPILATION_RESULT =~ "error" ]] || [[ $COMPILATION_RESULT =~ "fatal" ]]; then
   echo "Compilation failed"
   exit 1
fi

echo "Compilation completed"
exit 0