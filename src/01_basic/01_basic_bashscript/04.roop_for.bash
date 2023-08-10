for SVR in SVR1 SVR2 SVR3
do
    # INPUTs
    uptime
    uptime | awk '{print $6, $7, $8, $9, $10}'
    uptime | awk -v OFS="#" '{print $6, $7, $8, $9, $10}'
    uptime | grep -o 'load average: [0-9.]*, [0-9.]*, [0-9.]*'

    # OUTPUTs
    # 08:59:19 up  3:14,  0 users,  load average: 0.00, 0.00, 0.00
    # load average: 0.00, 0.00, 0.00
    # load#average:#0.00,#0.00,#0.00
    # load average: 0.00, 0.00, 0.00
done

for SVR in {1..3}
do
    # INPUT
    echo "${SVR}"
    # OUTPUTs
    # 1
    # 2
    # 3
done

# 변수 참조 "${SVR}"
# CLI 참조 "$(seq 1 3)"
for SVR in "$(seq 1 3)"
do
    # INPUT
    echo "${SVR}"
    # OUTPUTs
    # 1
    # 2
    # 3
done