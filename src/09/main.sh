#!/bin/bash

for ((i=1; i=1; ));
do
    >/var/www/project/index.html
    >/var/www/project/metrics/index.html
    echo  "# HELP cpu_used_in_percent The total CPU used as percent value" >>/var/www/project/index.html
    echo  "# HELP cpu_used_in_percent The total CPU used as percent value" >>/var/www/project/metrics/index.html
    echo  "# TYPE cpu_used_in_percent gauge" >>/var/www/project/index.html
    echo  "# TYPE cpu_used_in_percent gauge" >>/var/www/project/metrics/index.html
    echo  "cpu_used_in_percent $(ps -eo pcpu | awk '{s+=$1} END {print s}')" >>/var/www/project/index.html
    echo  "cpu_used_in_percent $(ps -eo pcpu | awk '{s+=$1} END {print s}')" >>/var/www/project/metrics/index.html
    echo  "# HELP free_hd_space_in_bytes The total number of bytes free in home directory" >>/var/www/project/index.html
    echo  "# HELP free_hd_space_in_bytes The total number of bytes free in home directory" >>/var/www/project/metrics/index.html
    echo  "# TYPE free_hd_space_in_bytes gauge" >>/var/www/project/index.html
    echo  "# TYPE free_hd_space_in_bytes gauge" >>/var/www/project/metrics/index.html
    echo  "free_hd_space_in_bytes $(df -B1 /home | awk 'NR==2{print $4}')" >>/var/www/project/index.html
    echo  "free_hd_space_in_bytes $(df -B1 /home | awk 'NR==2{print $4}')" >>/var/www/project/metrics/index.html
    echo  "# HELP free_mem_in_bytes The free RAM left in bytes" >>/var/www/project/index.html
    echo  "# HELP free_mem_in_bytes The free RAM left in bytes" >>/var/www/project/metrics/index.html
    echo  "# TYPE free_mem_in_bytes gauge" >>/var/www/project/index.html
    echo  "# TYPE free_mem_in_bytes gauge" >>/var/www/project/metrics/index.html
    echo  "free_mem_in_bytes $(free -b | awk 'NR==2{print $4}')" >>/var/www/project/index.html
    echo  "free_mem_in_bytes $(free -b | awk 'NR==2{print $4}')" >>/var/www/project/metrics/index.html
    sleep 3
done
