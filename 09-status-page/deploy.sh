#!/bin/bash

./update-status.sh
docker compose up --build -d
curl -s http://localhost:9050 | grep -Ei "last checked|disk usage|capstone-web"
