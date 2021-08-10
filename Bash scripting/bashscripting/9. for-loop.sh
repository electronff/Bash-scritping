The for loop

A ‘for loop’ is a bash programming language statement which allows code to be repeatedly executed. 
A for loop is classified as an iteration statement i.e. it is the repetition of a process within a bash script. 
For example, you can run UNIX command or task 5 times or read and process list of files using a for loop.


# Its structure is as follows:

for item in (tomato maggi soap);
do
command 1 echo $item
command 2
…
command n
done


for VARIABLE in file1 file2 file3
do
	command1 on $VARIABLE
	command2
	commandN
done

for OUTPUT in $(Linux-Or-Unix-Command-Here)
do
	command1 on $OUTPUT
	command2 on $OUTPUT
	commandN
done







Example: Write a script to create 4 regular users on the system: u6bt, u7bt, 
u8bt, u9bt

for.sh

for i in u6bt u7bt u8bt u9bt;
do 
useradd ${i}
echo “user $i is successfully created”
sleep 3
done 

creating many users

for-multiple.sh

#!/bin/bash
for i in $(cat myfile)
do useradd $(i)
echo "user $i is succesfully created"
sleep 3
done

Deleting many users


for-multiple-delete.sh

#!/bin/bash
for i in $(cat myfile)
do 
userdel $(i)
echo "user $i was succesfully deleted"
sleep 3
done

Extras

for-pkgs.sh

#!/bin/bash
PKGS="php7-openssl-7.3.19-r0  php7-common-7.3.19-r0  php7-fpm-7.3.19-r0  php7-opcache-7.3.19-r0 php7-7.3.19-r0"
for p in $PKGS
do
   echo "Installing $p package"
   apt install "$p"
done


to remove installed packages

for-pkgs-remove.sh

#!/bin/bash
PKGS="php7-openssl-7.3.19-r0  php7-common-7.3.19-r0  php7-fpm-7.3.19-r0  php7-opcache-7.3.19-r0 php7-7.3.19-r0"
for p in $PKGS
do
   echo "Installing $p package"
   apt remove "$p"
done


https://www.cyberciti.biz/faq/bash-for-loop/



