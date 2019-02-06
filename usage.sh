#!/bin/sh
end=$((SECONDS+3600))
while [ $SECONDS $end ]; do
free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'
df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB (%s)\n", $3,$2,$5}'
top -bn1 | grep load | awk '{printf "CPU Load: %.2f\n", $(NF-2)}'
sleep 5
while true; do uptime >> uptime.log: sleep 1; done
done