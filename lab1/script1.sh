#!/bin/bash
chmod +x script1.sh

echo "zadanie 1"
grep -c -E "Failed password for invalid" secure.2 
#2 zrobic regex
echo "zadanie 2"
rm ip.txt
grep "Failed password for invalid" secure.2 >> ip.txt
grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'  ip.txt |sort |uniq -c | sort -nr | head -n 30 
# curl ifconfig.me
echo " "
echo "zadanie 3"
#2
rm ip2.txt
grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' ip.txt >> ip2.txt

#for i in $(cat ip2.txt); do echo "$i $(geoiplookup $i )"; done >> test01.txt
#cat ./ip2.txt | xargs -n 1 geoiplookup {} | sort | uniq -c | sort -nr | head -10


echo " "
echo "Zadanie 4"
#4
grep  "Failed password for invalid"  secure.2 |grep -E -o  "user [[:alpha:]]*" |sort|uniq -c|sort -nr| head -n 20 

echo " "

#5
echo " "
echo "Zadanie 5"
grep  "Accepted"  secure.2 | awk '{print $9}'|sort |uniq -c | sort -nr 
