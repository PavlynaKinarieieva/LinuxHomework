#!/bin/bash

for i in {1..10}

do
date +'%T'
#sleep 5
done

lscpu > processor_info.txt
cat /etc/os-release | head -1 >> os_info.txt
cat /etc/os-release | head -1 | sed 's/NAME="//' | cut -d' ' -f1 >> os_info.txt 

for i in {50..100}
do
touch "${i}.txt" 
done

