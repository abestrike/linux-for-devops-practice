#!/bin/bash

while true
do
    echo "$(date '+%F %T') - heartbeat from my service" >> "$HOME/projects/linux-for-devops-practice/07-services/heartbeat.log"
    sleep 5
done
