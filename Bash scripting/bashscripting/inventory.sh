#!/bin/bash

## Description: System Inventory
##Aurthor: u5Bt/email on August 2021

echo "Number of cpu's"
nproc
echo "Os Version"
cat /etc/*release
echo "Hard drives(s)"
lsblk
echo "Memory info"
free -m
echo "Cpu info"
lscpu
cat /proc/cpuinfo
echo "Kernel vesion"
uname -r
exit.0
