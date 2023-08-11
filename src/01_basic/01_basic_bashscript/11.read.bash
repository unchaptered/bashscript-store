# 1. Generate Random Goal
GOAL=$(($RANDOM% 100+1))
GOAL_CNT=0
echo "GOAL : ${GOAL}"

# 2. Answer to goal
while true
do
    GOAL_CNT=$((${GOAL_CNT}  + 1))
    GOAL_CNT_LIMIT=5
    if [ ${GOAL_CNT} -gt ${GOAL_CNT_LIMIT} ]; then echo '5번 틀려서 프로그램을 종료합니다.'; exit 0; fi

    read -p "Answer about goal : " INPUT_GOAL

    if [[ ${INPUT_GOAL} =~ ^-?[0-9]+$ ]]; then

        if [ ${INPUT_GOAL} -gt ${GOAL} ]; then echo '입력한 숫자가 더 큽니다.'
        elif [ ${INPUT_GOAL} -lt ${GOAL} ]; then echo "입력한 숫자가 더 적습니다."
        elif [ ${INPUT_GOAL} -eq ${GOAL} ]; then echo "${GOAL_CNT}번 만에 성공!"; exit 0
        else echo "알 수 없는 에러"; exit 0
        fi

    else echo "숫자가 아닌 값 ${INPUT_GOAL}이 입력되었습니다."; 
    fi

done
