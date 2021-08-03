Variables in scripting

A variable is a string that carries a specific value.

example:
Setting a value for a variable: 

argument=variable
VariableName=VariableValue

AC=advance-class

Reading the value for a variable :  $VariableName or ${variableName}

$AC or ${AC}


Example of single declaration
variable.sh

#!/bin/bash
# Description: 
# Author:
# Date:
NAME=mur
echo “$NAME is a very hardworking guy”
echo”The manager says, he will hire $NAME in his new team wherever he goes”
echo ”$NAME likes to show off because the manager loves him ”
echo “$NAME will always be available when they need him”

Example of multiple declaration

variables.sh

#!/bin/bash
# Description: 
# Author:
# Date:
FIRST_NAME=mur
LAST_NAME=ami
AGE=15
COLOR=blue

echo “${FIRST_NAME} is a very hardworking 
girl”
echo ”Her last name is ${LAST_NAME} and her 
favorite color is ${COLOR}”
echo ”${FIRST_NAME} is ${AGE} years old ”
echo “$NAME is not defined”vim variable