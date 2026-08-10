# Status Page Runbook

## Goal

Generate and serve the Linux status page on port 9020.

## Start

```bash
./update-status.sh
python3 -m http.server 9020 &
PAGE_PID=$!
sleep 1
