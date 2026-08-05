# 09 - Status Page

## What I built

I created a Bash script called update-status.sh.

The script collects Linux system information and writes it into index.html.

Then I served index.html using a Python web server on port 9020.

## Commands practiced

- ./update-status.sh
- python3 -m http.server 9020 &
- PAGE_PID=$!
- sleep 1
- curl http://localhost:9020
- ss -tuln | grep 9020
- kill "$PAGE_PID"

## Mental model

update-status.sh = creates the page

index.html = the status page

python3 -m http.server 9020 = serves the page

port 9020 = network door

curl = tests the page

ss = checks if the port is open

PAGE_PID = saved process ID

kill "$PAGE_PID" = stops the server

## Important lesson

Starting a server does not always mean it is ready immediately.

sleep 1 gives the server one second to open the port before curl tests it.
