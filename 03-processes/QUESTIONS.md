# 03 - Process Questions

## 1. What does & do?

It runs a command in the background so I can still use the terminal.

## 2. What is a PID?

PID means Process ID. It is the number Linux gives to a running process.

## 3. What does ps do?

ps shows running processes.

## 4. What does STAT mean?

STAT means process state.

Examples:
- S = sleeping/waiting
- R = running
- T = stopped
- Z = zombie

## 5. What does kill PID do?

It asks Linux to stop that process.

## 6. How do I know a process stopped?

If `ps -p PID -o pid,stat,cmd` shows only the header and no process row, the process is gone.

## 7. Why did curl work before killing the web server?

Because the Python web server process was running on port 9000.

## 8. Why did curl fail after killing the web server?

Because the web server process stopped, so nothing was listening on port 9000.
