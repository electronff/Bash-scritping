#!/bin/bash
#pupose: print any given number table
#version:1.0
#Date:07/28/2021

echo " what is your value: "
read value
i=1
while [ $i -le 10 ]
do
b=$((value * i))
echo " $value * $i = $b "
i=$((i+1))
done