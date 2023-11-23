#!/bin/bash

number=4

if [ $((number % 2)) -eq 0 ]; then

   echo "It is an even number."

else

   echo "It is an odd number."

fi
