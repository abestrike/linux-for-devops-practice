# 04 - Linux Logs

A log is a record of events produced by an application or system.

## Commands practiced

- cat app.log
- tail -n 3 app.log
- tail -f app.log
- grep "ERROR" app.log
- grep -c "ERROR" app.log
- grep -n "ERROR" app.log
- grep -iE "ERROR|WARNING" app.log
- grep "ERROR" app.log | tail -n 3
- grep "ERROR" app.log > errors.log
- wc -l app.log

## What I learned

cat displays the entire file.

tail shows the latest lines.

tail -f keeps watching a file for new lines.

grep searches for matching text.

A pipe sends output from one command to another command.

The > symbol saves output into a file and overwrites the file.

The >> symbol adds output to the end of a file.

When troubleshooting, I can search logs for ERROR and WARNING messages.
