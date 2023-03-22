#!/bin/bash
chmod +x script2.sh

echo "zadanie 1"
grep -c -E "authenticator failed|Access denied" final.log
#2 zrobic regex
echo "zadanie 2"
rm ip_1.txt
grep -E "authenticator failed|Access denied" final.log >> ip_1.txt
grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'  ip_1.txt |sort |uniq -c | sort -nr | head -n 30 
# curl ifconfig.me
echo " "
echo "zadanie 3"
#2
rm ip_2.txt
grep -E  "authenticator failed|Access denied" ip_1.txt | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' |sort | uniq -c | sort -nr | head -n 10 >> ip_2.txt

for i in $(cat ip_2.txt | awk '{print $2}'); do echo "$i $(whois $i | grep -m1 -E 'Country|country' )"; done | column -t

echo " "
echo "Zadanie 4"
#4
rm users.txt
grep -E -o  "user-[0-9]{1,4}*?" final.log |sort |uniq -c | sort -nr >> users.txt

#5
echo " "
echo "Zadanie 5"

grep -E "authenticator failed|Access denied" final.log >> users_1.txt
grep -E -o  "user-[0-9]{1,4}*?" users_1.txt |sort |uniq -c | sort -nr | head -n 20
