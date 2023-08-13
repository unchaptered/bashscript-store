#!/bin/bash

NUM=1

while [ "${NUM}" -le 3 ]
do
    echo "cent${NUM}"
    NUM=$(( ${NUM} + 1 ))
done
