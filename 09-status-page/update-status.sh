#!/bin/bash

HOST=$(hostname)
USER_NAME=$(whoami)
CHECK_TIME=$(date '+%F %T')
UPTIME=$(uptime -p)
DISK_USAGE=$(df / | awk 'NR==2 {print $5}')
SERVICE_STATUS=$(systemctl --user is-active capstone-web 2>/dev/null || true)

if [ -z "$SERVICE_STATUS" ]; then
    SERVICE_STATUS="not-found"
fi
cat > index.html <<HTML
<!DOCTYPE html>
<html>
<head>
    <title>Linux DevOps Lab</title>
</head>
<body>
    <h1>Abel's Linux DevOps Lab</h1>

    <p><strong>Host:</strong> $HOST</p>
    <p><strong>User:</strong> $USER_NAME</p>
    <p><strong>Last checked:</strong> $CHECK_TIME</p>
    <p><strong>Uptime:</strong> $UPTIME</p>
    <p><strong>Disk usage:</strong> $DISK_USAGE</p>
    <p><strong>capstone-web service:</strong> $SERVICE_STATUS</p>
</body>
</html>
HTML

echo "Status page updated at $CHECK_TIME"
