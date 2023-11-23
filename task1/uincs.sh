#!/bin/bash

read -p "Enter a number: " num

if [ $num -gt 0 ]; then

   echo "It is a positive number."

elif [ $num -lt 0 ]; then

   echo "It is a negative number."

else

   echo "It is zero."

fi
