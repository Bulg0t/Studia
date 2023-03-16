#!/bin/bash
chmod +x script1.sh

#1
grep -c "authentication failure" $1 
#2 zrobic regex
grep  "Failed password"  secure.2 | awk '{print $13}'|sort |uniq -c | sort -nr | head -n 30 
# curl ifconfig.me
echo " "
#4
grep  "Failed password"  secure.2 |awk '{print $11}'|sort|uniq -c|sort -nr| head -n 20 

echo " "
#2
grep  "Failed password"  secure.2 | awk '{print $13}'|sort |uniq -c | sort -nr | head -n 10 | awk '{print $2}' 

$output = $(grep  "Failed password"  secure.2 | awk '{print $13}'|sort |uniq -c | sort -nr | head -n 10)
curl -s "ipinfo.io/$output" | jq ".country"
#5
echo " "
grep  "Accepted"  secure.2 | awk '{print $9}'|sort |uniq -c | sort -nr 
