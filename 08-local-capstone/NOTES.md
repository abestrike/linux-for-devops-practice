# 08 - Local Capstone

## What I built

I created a simple local web page using index.html.

Then I served it manually using:

python3 -m http.server 9010

After that, I created a systemd user service called capstone-web.service to run the same web server as a service.

## Mental model

index.html = the page/file

python3 -m http.server 9010 = the web server process

port 9010 = the network door

curl = test if the web server responds

ss = check if the port is listening

capstone-web.service = instructions for systemd

systemctl = controller for the service

## What I proved

When the service was active, curl worked and port 9010 was listening.

When I stopped the service, the service became inactive and port 9010 closed.

Simple flow:

file -> server process -> port -> curl test

systemd controls the server process using the service file.
