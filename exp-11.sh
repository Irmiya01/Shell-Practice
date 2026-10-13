#! /bin/bash

# Name Argument
    # name=$1
    # echo "Hi $1 "

# Sum of Arguments
    # sum=0
    # for i in "$@"
    # do
    #   if [[ $i =~ ^[0-9]+$ ]]
    #   then
    #       ((sum+=$i))
    #    else
    #       continue
    #    fi
    # done
    # echo "Sum: $sum"         

# Argument Count
    # echo "Total No. of Args supllied: $#" 

# File Copy Arguments
    # if (($# == 2))
    # then
    #    cp -v $1 $2
    # else
    #    echo "Enter only TWO Args!"   
    # fi        

# Command-Line Calculator
    # num1=$1
    # opt=$2
    # num2=$3
    # case $opt in
    # + )
    #     echo "Sum: $(($num1 + $num2))" ;;
    # - )
    #     echo "Subtraction: $(($num1 - $num2))" ;;
    # \* )
    #     echo "Product: $(($num1 * $num2))" ;;
    # / )
    #     echo "Division: $(echo "scale=2;$num1 / $num2" | bc)"  ;;
    # * )
    #     echo "InValid Operator!"  ;;
    # esac