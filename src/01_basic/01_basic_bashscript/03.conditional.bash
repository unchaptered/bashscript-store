#!/bin/bash

##  ./nginx_ctl.sh start        : nginx start
##  ./nginx_ctl.sh stop         : nginx stop
##  ./nginx_ctl.sh reload       : nginx reload
##  ./nginx_ctl.sh configtest   : nginx configtest

### ./nginx_ctl.sh a b c
### $1 : a, $2 : b, $3 : c

CMD=$1
case "${CMD}" in
start)
    echo "nginx start";;
stop)
    echo "nginx stop";;
reload)
    echo "nginx reload";;
configtest)
    echo "nginx configtest";;
*)
    echo "사용 방법 ./nginx_ctl.sh {start|stop|reload|configtest}";;
esac
