#!/bin/bash

# Number Series
    # for i in {1..10..1}
    # do
    # echo -e "$i \c"
    # done
    # echo
    # j=1
    # while [ $j -le 10 ]  
    # do
    # echo -e "$j \c"
    # ((j++))
    # done
    # echo
    # h=1
    # until(( $h > 10 ))
    # do
    # echo -e "$h \c" 
    # ((h++))
    # done 
    # echo

# Even Numbers
    # echo -e "Even Number upto 100:\n"    
    # for i in {1..100..1}
    # do
    # if (( i%2 == 0 ))
    # then
    #     echo -e "$i \c"
    # fi
    # done    
    # echo

# Odd Numbers
    # echo -e "Odd Numbers upto 100:\n"    
    # for i in {1..100..1}
    # do
    # if (( i%2 != 0 ))
    # then
    #     echo -e "$i \c"
    # fi
    # done    
    # echo

# Multiplication Table
    # read -p "Enter a Number for table:" num1
    # if [[ $num1 =~ ^-?[0-9]+$ ]]
    # then
    # for(( i=1;i<=10;i++ ))
    # do
    #     echo "$num1 * $i= $(( num1 * i )) "
    # done   
    # echo
    # else
    # echo "Allows Only Integers!"
    # fi

# Sum of N Numbers
    # read -p "Enter a Number to sum:" num2
    # if [[ $num2 =~ ^[0-9]+$ ]]
    # then
    # sum=0
    # for(( i=1;i<=$num2;i++ ))
    # do
    #     ((sum+=$i))
    # done   
    # echo $sum
    # echo
    # else
    # echo "Only Positive Integers!"
    # fi    

# Factorial
    # read -p "Enter a Number:" fac
    # if [[ $fac =~ ^[0-9]+$ ]]
    # then
    #     prod=1
    #     until (($fac < 1))
    #     do 
    #         prod=$(($prod * $fac ))
    #         ((fac--))
    #     done 
    #     echo $prod 
    # else
    #     echo Accepts only Whole Numbers!
    # fi   

# Fibonacci Series
    # read -p "Enter a Number:" fib
    # if [[ $fib =~ ^[0-9]+$ ]]
    # then
    #     arr=("0" "1") 
    #     for (( i=2; i<=$fib; i++ ))
    #     do
    #         arr[$i]=$((${arr[$i-1]} + ${arr[$i-2]}))
    #     done   
    #     echo "${arr[@]}" 
                
    # else
    #     echo Accepts only Whole Numbers!
    # fi   

# Reverse Number
    # read -p "Enter a Number:" temp
    # if [[ $temp =~ ^[0-9]+$ ]]
    # then
    #     while (( $temp > 0))
    #     do
    #         rem=$(( $temp%10 ))
    #         rev=$(( $(( rev * 10 )) + $rem ))
    #         (( temp/=10))
    #     done
    #     echo $rev    
    # else
    #     echo Accepts only Whole Numbers!
    # fi   

# Palindrome Number
    # read -p "Enter a Number:" pal
    # if [[ $pal =~ ^[0-9]+$ ]]
    # then
    #     temp=$pal
    #     while (( $temp > 0))
    #     do
    #         rem=$(( $temp%10 ))
    #         rev=$(( $(( rev * 10 )) + $rem ))
    #         (( temp/=10))
    #     done
    #     if [ $pal == $rev ]
    #     then
    #         echo "$pal is a palindrome"
    #     else
    #         echo "$pal is not a Palindrome"  
    #     fi      
    # else
    #     echo Accepts only Whole Numbers!
    # fi  

# Prime Number
    # read -p "Enter number:" num
    # if [[ $num =~ ^[0-9]+$ ]]
    # then 
    #     count=0
    #     for(( j=1; j<$num; j++ ))
    #     do
    #     if (( $num % $j ==0 ))
    #     then
    #         (( count++ ))
    #         fi
    #     done 
    #     if [ $count -eq 1 ]
    #     then
    #         echo $num is a Prime
    #     else
    #         echo $num is not a Prime    
    #     fi
    # else
    #     echo "Accepts only Positive Integers!"  
    # fi     

# Prime Numbers
    # for (( i=1; i<=100; i++ ))
    # do
    #     count=0
    #     for(( j=1; j<$i; j++ ))
    #     do
    #     if (( $i % $j ==0 ))
    #     then
    #         (( count++ ))
    #         fi
    #     done 
    #     if [ $count -eq 1 ]
    #     then
    #         echo -e "$i \c"    
    #     fi
    # done  
    # echo  