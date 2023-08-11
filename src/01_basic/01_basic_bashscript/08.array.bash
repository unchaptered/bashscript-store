#!/bin/bash

testArray=(one two three 4 5 6 7)

for i in $(seq 0 6);
do
    echo ${testArray[i]}
done