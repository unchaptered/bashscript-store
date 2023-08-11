#!/bin/bash
# df | awk -f /home/ubuntu/bash_project_v2/src/01_basic/02_advance-bashscript/03.awk.module.bash
{
    gsub(/%/, "")
    PER=0; MNT=""

    if ( NF == 6 ) PER=$5
    if ( PER > 30 ) MNT=$6

    printf "%d%\t%s\n",PER,MNT
}

# Origins ======================================================================
# Filesystem      Size  Used Avail Use% Mounted on
# Filesystem     1K-blocks    Used Available Use% Mounted on
# /dev/root       30297152 2429140  27851628   9% /
# tmpfs             494460       0    494460   0% /dev/shm
# tmpfs             197784     844    196940   1% /run
# tmpfs               5120       0      5120   0% /run/lock
# /dev/xvda15       106858    6182    100677   6% /boot/efi
# tmpfs              98892       4     98888   1% /run/user/1000

# Outputs ======================================================================
# 0%
# 9%
# 0%
# 1%
# 0%
# 6%
# 1%