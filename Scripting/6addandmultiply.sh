#!/bin/bash

echo "Please pass interger values number1:"
read num1
echo "Please pass interger values number2:"
read num2

sum=`expr $num1 + $num2`
multiply=`expr $num1 \* $num2`
echo "The sum of $num1 and $num2 is $sum"
echo "The sum multiplication $num1 and $num2 is $multiply"
