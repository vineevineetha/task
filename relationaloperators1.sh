# calculate sum and product and check greater number ?

#!/bin/bash

function number {
  echo "sum=$(( $num1 + $num2 ))"
}

function product {
 echo "product=$(( $num1 * $num2 ))"
}


read -p "Enter first number:" num1
read -p "Enter second number:" num2


if [ $num1 -eq $num2 ]; then
  echo "both are equal"
 elif [ $num1 -gt $num2 ]; then
  echo "$num1 is greater than $num2"
 else
  echo "$num1 is less than $num2"
fi


number $sum
product $product
