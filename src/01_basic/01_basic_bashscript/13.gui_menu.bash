#!/bin/bash

# 1. uptime
# 2. df -h
# 3. free -m
# 4. pstree
# 5. 서버를 입력받아서 그 서버에 SSH로 입력

# 함수
# clear
# txt로 메뉴를 출력
# 메뉴 선택해서 실행 이후에 일시 중지 ? Press any key to continue...
# while true

function menu {
dialog --title " GUI MENU " \
        --radiolist " 메뉴를 선택해주세요. " 20 35 6 \
            1 "로드 에버리지" off \
            2 "디스크 상태" off \
            3 "메모리 상태" off \
            4 "프로세스 트리" off \
            5 "입력한 서버에 SSH 접속" off \
            6 "메뉴 종료" off \
        2>./select
}

function pressKey {

    echo
    read -n1 -rsp "Press any key to continue..."
    echo
    echo

}

while true
do
    menu
    
    SELECT_MENU=$(cat select)
    case ${SELECT_MENU} in
        1)
            clear
            echo "로드 에버리지"
            uptime
            pressKey
            ;;
        2)
            clear
            echo "디스크 상태"
            df -h
            pressKey
            ;;
        3)
            clear
            echo "메모리 상태"
            free -m
            pressKey
            ;;
        4)
            clear
            echo "프로세스 트리"
            pstree
            pressKey
            ;;
        5)
            clear
            read -p "접속하고 싶은 서버 이름을 입력해주세요 (cent[1-3]): " SVR_NAME
            sleep 1
            echo "${SVR_NAME}에 접속합니다..."
            pressKey
            # ssh ${SVR_NAME}
            ;;
        6)
            exit 0;;
        *)
            echo "숫자를 잘못 입력하셨습니다."
            pressKey
            ;;
    esac
done