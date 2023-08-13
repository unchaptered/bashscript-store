#!/bin/bash

# Dependencies
# sudo apt-get update
# sudo apt-get install mailutils

# 1. report 파일 생성
touch report

# 2. report 파일 초기화
cp -f /dev/null report

# 3. report 파일 값 할당
# > (overwrite)
# >> (append)

    # CASE A
df -h >> report
pstree >> report
free -m >> report
uptime >> report

    # CASE B
{
    df -h
    echo "======================================================================================="
    echo
    pstree
    echo "======================================================================================="
    echo
    free -m
    echo "======================================================================================="
    echo
    uptime
} >> report
# 4. report 전송
cat report | mail -s "[report] cent1 system info" unchaptered@edint.io