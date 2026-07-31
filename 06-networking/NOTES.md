# 06 - Networking

## Commands practiced

- ip -br a
- ip route
- ping -c 3 1.1.1.1
- ping -c 3 google.com
- python3 -m http.server 9002
- curl -I http://localhost:9002
- ss -tuln | grep 9002
- kill "$SERVER_PID"

## What I learned

ip -br a shows network interfaces and IP addresses.

wlp1s0 is my Wi-Fi interface.

ip route shows the default gateway.

ping 1.1.1.1 tests internet connectivity using an IP address.

ping google.com tests internet connectivity and DNS.

python3 -m http.server starts a local web server.

curl tests if the server responds.

ss checks if a port is listening.

kill stops the server process.

Simple mental model:

server running -> port open -> curl works
server stopped -> port closed -> curl fails
