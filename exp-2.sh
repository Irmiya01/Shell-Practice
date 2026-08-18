#! /bin/bash

# Hello World
echo -e "Welcome to Linux Shell Scripting Lab\n"

# Greeting
echo -e "Enter name :\c"
read name 
echo -e "Welcome! $name\n"

# Two-Number Addition
echo -e "Enter two numbers:\c"
read num0 num
echo -e "Sum : $(( $num0 + $num ))\n"

# Arithmetic Operations
echo -e "Enter two numbers:\c"
read num1 num2
echo  "Addition ($num1 + $num2): $(( $num1 + $num2 ))"
echo  "Subtraction ($num1 - $num2): $(( $num1 - $num2 ))"
echo  "Multiplication ($num1 * $num2): $(( $num1 * $num2 ))"
echo "Division ($num1 / $num2): $(echo "scale=2; $num1 / $num2" | bc)"          
echo -e "Modulus ($num1 % $num2): $(( $num1 % $num2 ))\n"

# Circle Area
pi=3.14
echo -e "Enter radius a circle:\c"
read rad
area=$(echo "scale=2;(($pi * $rad^2))" | bc )
echo -e "Area of the circle: ( $area )\n"

# Temperature Conversion
read -p "Enter celsius:" cel
fah=$(echo "scale=2;$cel * 1.8 + 32" | bc )
echo -e "fahrenheit :$fah\n"

# Swap Numbers
a=10
b=20
echo a:$a b:$b
temp=$a                               # with temperary variable
a=$b
b=$temp
echo "a:$a b:$b     with temp variable"
a=$(($a+$b))
b=$(( $a-$b ))
a=$(( $a-$b ))
echo -e "a:$a b:$b     without temp variable\n"

# Simple Interest
read -p "Enter Principal Amt, Rate, Time(yrs): " P R T
interest=$(echo "scale=2;($P * $R * $T)/100" | bc)
echo -e "Simple Interest : $interest\n"

# Student Details
read -p "Enter name, roll_no, branch, marks :" st_name roll branch marks
echo "Student name : $st_name,
Roll_no : $roll,
Branch : $branch,
Marks : $marks"