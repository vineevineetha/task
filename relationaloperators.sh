 checking Even or odd  and comparing two numbers ?

# Write a shell script with a function to check  if a number is even or add 
#then compare two numbers with input by the user to determing  if they are equal if not which one is greater ?

#!/bin/bash

function checkEvenOdd {
 if [ $(( $1 % 2 )) -eq 0 ]; then
    echo "$1 is even number"
   else
    echo "$1 is odd number"
 fi
}

read -p "Enter 1st number:" num1 
read -p "Enter 2nd number:" num2                                          

checkEvenOdd $num1
checkEvenOdd $num2



if [ $num1 -eq $num2 ]; then
  echo "The numbers are equal"
elif [ $num1 -gt $num2 ]; then
  echo "$num1 is greater than $num2"
else
  echo "$num1 is less than $num2"
fi

