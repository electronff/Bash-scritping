while loop

The while loop enables you to execute a set of commands repeatedly until some condition occurs. 
It is usually used when you need to manipulate the value of a variable repeatedly. 
Here the Shell command is evaluated. If the resulting value is true, given statement (s) are executed.


while [ condition ]
do
   command1
   command2
   command3
done

command1 to command3 will be executed repeatedly till condition is true.
The argument for a while loop can be any boolean expression. 
Infinite loops occur when the conditional never evaluates to false



Example: create a new script to practice the while loop

while.sh

#!/bin/bash
#while loops
while [ 2 -eq 2 ]
do
echo ”This is a while loop”
sleep 2
echo “success”
done


while-ncount.sh

#!/bin/bash
# while loop
n=1
while [ $n -le 10 ]
do echo "$n"
n=$(( n+1 ))

done

while-m-table.sh

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