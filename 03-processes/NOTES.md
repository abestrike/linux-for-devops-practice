
## Port checking with ss

I used this command:

ss -tulnp | grep 9000

This checks whether a process is listening on port 9000.

When the Python web server was running, port 9000 appeared.

After killing the web server process, port 9000 disappeared.

DevOps idea:
If an app is not responding, I should check:
1. Is the process running?
2. Is the port listening?
3. Does curl get a response?
