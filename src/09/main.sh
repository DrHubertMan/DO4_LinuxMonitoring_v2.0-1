#!/bin/bash

for ((i=1; i=1; ));
do
    >stat.html
    echo "$(cat /proc/stat | grep cpu | awk 'NR==1{print $0}')">>stat.html
    echo "$(free | awk 'NR==2{print $0}')">>stat.html
    echo "Disk Used - $(df / | awk 'NR==2{print $3}')" >>stat.html
    echo "Disk Available - $(df / | awk 'NR==2{print $4}')">>stat.html
    sleep 3
done
