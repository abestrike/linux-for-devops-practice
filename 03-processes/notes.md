# 03 - Linux Processes

## What is a process?

A process is a running program.

Examples:
- sleep 300
- python3 -m http.server 9000
- docker
- nginx
- ssh

## Commands practiced

- sleep 300 &
- jobs -l
- ps -p PID -o pid,ppid,stat,etime,cmd
- kill PID
- Ctrl + Z
- bg
- fg
- Ctrl + C
- python3 -m http.server 9000
- curl http://localhost:9000

## What I learned

The `&` symbol runs a command in the background.

`$!` gives the PID of the latest background process.

`ps` checks if a process is running.

`kill` stops a process.

`jobs -l` shows background or stopped jobs from the current terminal.

`Ctrl + Z` pauses a foreground process.

`bg` continues a stopped process in the background.

`fg` brings a background process back to the foreground.

`Ctrl + C` stops the current foreground process.

## Web server practice

I started a small Python web server:

python3 -m http.server 9000 &

Then I saved the PID:

WEB_PID=$!

Then I tested it using:

curl http://localhost:9000

Before killing the process, curl worked.

After killing the process, curl failed because no server was running on port 9000.

## Important mental model

Program starts
→ Linux gives it a PID
→ ps checks the process
→ curl tests the server
→ kill stops the process
→ ps or curl confirms it stopped
