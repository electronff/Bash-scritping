# Environment variables

There ar:e some variables that are already set in the system for each 
user: Environment variables

1: When they are called, the system prints their current value 
depending on the logged in user.
2: You can run the command # env or # printenv in the Terminal to 
check those variables


Example1:

env.sh

#!/bin/bash
name=ami
echo " $name Welcome to DevopsClinics "

echo " $name find below your ENV variables"

echo " Your $USER_ID is $SUDO_USER and you are running in $SHELL environment. You belong to USER $USER, GROUP $SUDO_GID and you are presently working in $PWD.
echo " you can fine your mail in $MAIL and you can investigate the path below"
echo " $PATH


# we can also use the environment variables to control a process or installation.

env2.sh

#!/bin/bash
# Description: Script to install some packages
# Author: ami
# Date: May 2020
if [ ${USER} != root ]
then
echo “you need root access to run this” 
exit 1
fi
apt install finger -y
apt install curl -y
apt install zip -y
apt install vim -y

# we can check for root user and for regular user