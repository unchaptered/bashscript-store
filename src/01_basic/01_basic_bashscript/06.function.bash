#!/bin/bash

function echoLine {
    echo "============================================================"
}

echoLine
echo "df 결과입니다"
df -h
echoLine

echoLine
echo "ls 결과입니다"
ls -al
echoLine