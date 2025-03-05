#!/bin/bash

echo "Please pass value for number1:"
read num1

echo "Please pass value for number2:"
read num2

subtraction=`expr $num1 - $num2`
division=`expr $num1 / $num2`
echo "The substarction of $num1 and $num2 is $subtraction"
echo "The division of $num1 and $num2 is $division"
