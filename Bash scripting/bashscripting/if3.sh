#!/bin/bash
#Write a script that will users questions and evaluate the questions before the next
echo " What is your state? "
read S
grep -i $S state
if [ $? -eq 0 ]
then
echo " you can proceed "
else 
echo " please provide a valid state !!! "
fi