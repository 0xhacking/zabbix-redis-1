#!/bin/bash
METRIC="$1"
HOSTNAME=127.0.0.1
PORT="${2:-6379}"
if [ ${PORT} -ge 6379 ]&&[ ${PORT} -le 6385 ]; then
    password="xxxx"
elif [ ${PORT} -ge 6386 ]&&[ ${PORT} -le 6388 ]; then
    password="xxxxx"
elif [ ${PORT} -ge 6389 ]&&[ ${PORT} -le 6389 ]; then
    password="xxxxx"
elif [ ${PORT} -eq 6392 ]||[ ${PORT} -eq 6395 ]; then
    password="xxxx"
else
    password="xxxx"
fi
#PORT=$2
#(printf "INFO\r\n"; sleep 1;)|nc $HOSTNAME $PORT |awk  -F ':|,' '/'"${METRIC}"':/ {print $2}'|sed "s/[^0-9]//g"
#(printf "INFO\r\n"; sleep 1;)|redis-cli -h $HOSTNAME -p $PORT -a ${password}|awk  -F ':|,' '/'"${METRIC}"':/ {print $2}'|sed "s/[^0-9]//g"
(printf "INFO\r\n"; sleep 1;)|redis-cli -h $HOSTNAME -p $PORT -a ${password}|awk  -F ':|,' '/'"${METRIC}"':/ {print $2}'
