
If statements (and, closely related, case statements) allow us to make decisions 
in our Bash scripts. They allow us to decide whether or not to run a piece of code 
based upon conditions that we may set.

if [ <some test> ]
then
<command1>
else
<command2>
fi

if.sample.sh

#!/bin/bash
# Basic if statement

if [ $1 -gt 100 ]
then
echo  Hey that\'s a large number.
else
echo hey you are doing good
fi



Operator	                Description
! EXPRESSION	       		The EXPRESSION is false.
-n STRING			The length of STRING is greater than zero.
-z STRING			The lengh of STRING is zero (ie it is empty).
STRING1 = STRING2		STRING1 is equal to STRING2
STRING1 != STRING2		STRING1 is not equal to STRING2
INTEGER1 -eq INTEGER2		INTEGER1 is numerically equal to INTEGER2
INTEGER1 -gt INTEGER2		INTEGER1 is numerically greater than INTEGER2
INTEGER1 -lt INTEGER2		INTEGER1 is numerically less than INTEGER2
-d FILE				FILE exists and is a directory.
-e FILE				FILE exists.
-f FILE				FILE exists and its a regular file
-r FILE				FILE exists and the read permission is granted.
-s FILE				FILE exists and it's size is greater than zero (ie. it is not empty).
-w FILE				FILE exists and the write permission is granted.
-x FILE				FILE exists and the execute permission is granted.

test 001 = 1
echo $?
1
test 001 -eq 1
echo $?
0

touch myfile
test -s myfile
echo $?
1
ls /etc > myfile
test -s myfile
echo $?
0

if.sample2.sh

Example on files: Write a script that creates a file called success 
in the current directory only if it does not exist in there.

#!/bin/bash
fn=success
if [ -f $fn ]
then 
echo “ $fn file already exist”
else 
touch $fn
fi
ls | grep $fn

Example: Write an if statement to check the exit code of a command
if.sh
echo " what is os type?"
read os
echo " what app do you want to install?"
read app
OS_TYPE=$os
APP=$app

if [$OS_TYPE=centos]
then
        INSTALL_COMMD=yum
else
        INSTALL_COMMD=apt-get
$INSTALL_COMMD update -y
$INSTALL_COMMD install $APP -y 
if [$? -eq 0]
echo " $APP is installed succesfully"  
else   # if false
echo " $APP did not install" 
fi
fi