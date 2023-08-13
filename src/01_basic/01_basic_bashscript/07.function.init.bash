#!/bin/bash

echo "/home/ubuntu/bash_project_v2/src/01_basic/01_basic_bashscript/07.function.module.bash"
# 절대경로 참조
source /home/ubuntu/bash_project_v2/src/01_basic/01_basic_bashscript/07.function.module.bash

# 상대경로 참조
# 상대경로 참조 시, 작업 디렉토리가 ./src/01_basic/01_basic_bashscript 이어야 합니다.
# 그렇지 않으면 경로 참조가 이상하게 되어서 Bash Module을 찾지 못합니다.
srouce ./07.function.module.bash

plus 30 40
minus 10 3
multi 11 7
devide 2 0
devide 14 2