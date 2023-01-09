#!/bin/bash

for ((i=1; i=1; ));
do
    >/var/www/project/stat.html
    echo "$(cat /proc/stat | grep cpu | awk 'NR==1{print $0}')">>/var/www/project/stat.html
    echo "$(free | awk 'NR==2{print $0}')">>/var/www/project/stat.html
    echo "Disk Used - $(df / | awk 'NR==2{print $3}')" >>/var/www/project/stat.html
    echo "Disk Available - $(df / | awk 'NR==2{print $4}')">>/var/www/project/stat.html
    sleep 3
done
