READ STATEMENT

Read is a bash built in command that reads the contents of a line into a variable.
It allows for word splitting that is tied to the special shell variable IFS. 
It is primarily used for catching user input but can be used to implement functions 
taking input from standard input.



read.sh

#!/bin/bash
#Testing read 
#date:07272021

echo "YOU ARE WELCOME TO DEVOPSCLINICS"
echo "What is you name?"
read name
if [ -z ${name}]
then
echo "Please Print your name"
else
echo "What is your date of birth?"
read dob
if [ -z ${dob} ]
then
echo " $name , Your date of birth is required before you can proceed"
else
echo "What is your sex?"
read s
if [ -z ${s} ]
then
echo " $name , Please enter eiher Male or female"



read.sh
#!/bin/bash
#Testing read 
#date:07272021

echo "YOU ARE WELCOME TO DEVOPSCLINICS"
echo "What is you name?"
read name
if [ -z ${name}]
then
echo "Please Print your name"
else
echo "What is your date of birth?"
read dob
if [ -z ${dob} ]
then
echo " $name , Your date of birth is required before you can proceed"
else
echo "What is your sex?"
read s
if [ -z ${s} ]
then
echo " $name , Please enter eiher Male or female"
else
if [ -z ${here}]
then
echo " We need to know why you are here, $name "
else
echo " Hello ${name} , you are a ${s} and your date of birth is ${dob}."
echo " and you are here because : ${here}"
fi
fi
fi
fi