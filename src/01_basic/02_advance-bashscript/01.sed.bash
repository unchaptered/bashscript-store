#!/bin/bash

function echoLine {
    echo "=============================="
}
function echoTitle {
    echo "=========== ${1} ==========="
}

LOAD_FILE="/home/ubuntu/bash_project_v2/src/01_basic/02_advance-bashscript/01.sed"
SAVE_FILE_1="/home/ubuntu/bash_project_v2/src/01_basic/02_advance-bashscript/01.sed.aft"
SAVE_FILE_2="/home/ubuntu/bash_project_v2/src/01_basic/02_advance-bashscript/01.sed.aft2"

echo
echoTitle "[GROUP A]"
echo 'sed "s/테스트/test/" ${LOAD_FILE}'
echoLine
sed "s/테스트/test/" ${LOAD_FILE}
echo
echo

echoTitle "[GROUP B]"
echo 'sed "s/테스트/test-save/w ${SAVE_FILE_1}" ${LOAD_FILE}'
echoLine
sed "s/테스트/test-save/w ${SAVE_FILE_1}" ${LOAD_FILE}
echo
echo

echoTitle "[GROUP C]"
echo 'sed "3,5s/테스트/test/" ${LOAD_FILE}'
echoLine
sed "3,5s/테스트/test/" ${LOAD_FILE}
echo
echo 

echoTitle "[GROUP D]"
echo 'sed "s/테스트/test/; s/문장/꿲꿲/" ${LOAD_FILE}'
echoLine
sed "s/테스트/test/; s/문장/꿲꿲/" ${LOAD_FILE}
echo
echo

echoTitle "[GROUP E]"
echo 'sed -n "/test/p" ${LOAD_FILE}'
echoLine
sed -n "/test/p" ${LOAD_FILE}
echo
echo 

echo "end..."