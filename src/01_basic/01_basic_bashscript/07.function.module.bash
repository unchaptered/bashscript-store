#!/bin/bash

function plus {
    echo "$1 + $2 = "
    echo $[ $1 + $2 ]
    echo
}

function minus {
    echo "$1 - $2 = "
    echo $[ $1 - $2 ]
    echo
}

function multi {
    echo "$1 * $2 = "
    echo $[ $1 * $2 ]
    echo
}

function devide {
    echo "$1 / $2 = "
    if [ $2 -eq 0 ]
    then
        echo "0으로는 나눌 수 없습니다."
    else
        echo $[ $1 / $2 ]
    fi
}