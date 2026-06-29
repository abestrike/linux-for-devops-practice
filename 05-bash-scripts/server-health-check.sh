#!/bin/bash

HOST=$(hostname)
CURRENT_USER=$(whoami) 

echo "===== SERVER HEALTH CHECK ====="
echo "Host: $HOST"
echo "User: $CURRENT_USER"

 
echo ""
echo "Date:"
date

echo ""
echo "Uptime:"
uptime -p

echo ""
echo "Disk usage:"
df -h /

echo ""
echo "Memory usage:"
free -h

DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | tr -d '%')
THRESHOLD=${1:-80}

echo ""
echo "Disk status:"
echo "Threshold: ${THRESHOLD}%"

if [ "$DISK_USAGE" -ge "$THRESHOLD" ]; then
    STATUS="WARNING: Disk usage is ${DISK_USAGE}%"
else
    STATUS="OK: Disk usage is ${DISK_USAGE}%"
fi

echo "$STATUS"
echo "$(date '+%F %T') | $HOST | $STATUS" >> health-check.log
