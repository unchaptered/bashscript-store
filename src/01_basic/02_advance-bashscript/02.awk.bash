#!/bin/bash

function echoLine {
    echo "================================="
}
function echoTitle {
    echo "=========== ${1} ==========="
}

FILE_PATH="/home/ubuntu/bash_project_v2/src/01_basic/02_advance-bashscript/02.data"

echoTitle "[GROUP A]"
awk '/111/ {print $3}' ${FILE_PATH} # aaa 111 zzz
echoLine

echoTitle "[GROUP B]"
awk '/aaa/ {print $3}' ${FILE_PATH} # aaa 111 zzz
echoLine

FILE_PATH_2="/home/ubuntu/bash_project_v2/src/01_basic/02_advance-bashscript/02.data.colon"

echoTitle "[GROUP C]"
awk '/aaa/ {print $3}' ${FILE_PATH_2}
echoLine

echoTitle "[GROUP D]"
awk -F: '/aaa/ {print $3}' ${FILE_PATH_2}
echoLine

echoTitle "[GROUP E]"
awk -F: '{print $2}' ${FILE_PATH_2}
echoLine

echoTitle "[GROUP E]"
echo 'before';  uptime
echo 'after';     uptime | awk -Faverage: '{print $2}'
echoLine
