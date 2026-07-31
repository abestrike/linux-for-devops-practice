# 07 - Linux Services

A service is a background program managed by systemd.

## What I built

I created a script called heartbeat.sh.

The script writes a heartbeat message into heartbeat.log every 5 seconds.

Then I created a user systemd service called heartbeat.service to run the script in the background.

## Commands practiced

- systemctl --type=service --state=running --no-pager
- systemctl status NetworkManager --no-pager
- systemctl --user daemon-reload
- systemctl --user start heartbeat
- systemctl --user status heartbeat --no-pager
- systemctl --user stop heartbeat
- tail -f heartbeat.log

## What I learned

heartbeat.sh is the script that does the work.

heartbeat.service tells systemd how to run the script.

systemctl --user start heartbeat starts my user service.

systemctl --user status heartbeat checks if it is running.

systemctl --user stop heartbeat stops the service.

tail -f heartbeat.log lets me watch the log while the service runs.

Simple mental model:

script = work
service file = instructions
systemctl = controller
log file = proof
