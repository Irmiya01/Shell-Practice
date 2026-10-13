#!/bin/bash

# Addition Function
    # Addition(){
    #     read -p "Enter two numbers to Add:" a b
    #     if [[ $a =~ ^[0-9]+$ && $b =~ ^[0-9]+$ ]]
    #     then
    #         echo "Sum: $(($a + $b))"
    #     else
    #         echo "InValid Input!"
    #     fi  
    # }
    # Addition

# Prime Function
    # isPrime(){
    #     read -p "Enter a Number:" is_prime
    #     if [[ $is_prime =~ ^[0-9]+$ ]]
    #     then
    #         if ((is_prime < 2))
    #         then
    #            echo "$is_prime is not a Prime"
    #         else
    #             count=0
    #             for((i=2; i<=is_prime / 2; i++))
    #             do
    #             if ((is_prime % i == 0))
    #             then
    #                 ((count++))
    #             fi
    #             if ((count == 1))
    #             then
    #                 echo "$is_prime is not a Prime"
    #                 break
    #             fi  
    #             done 
    #             if ((count == 0))
    #             then
    #                 echo "$is_prime is a Prime"
    #             fi 
    #         fi    
    #     else
    #        echo "InValid Input!" 
    #     fi                 
    # } 
    # isPrime   

# Factorial Function
    # Factorial(){
    #     read -p "Enter a Number: " is_fact
    #     if [[ $is_fact =~ ^[0-9]+$ ]]
    #     then  
    #        is_fact=$((10#$is_fact))     
    #        Fact(){
    #             if (($1 == 0 || $1 == 1))
    #             then
    #             echo 1
    #             else
    #                 echo $(( $1 * $(Fact "$(($1-1))") ))
    #             fi   
    #        }
    #        echo "$(Fact $is_fact)"
    #     else
    #       echo "InValid Input!"
    #     fi     
    # }
    # Factorial

# Calculator Functions
    # Add(){
    #     echo $(($1 + $2))
    # }      
    # Sub(){
    #     echo $(($1 - $2))
    # }
    # Mul(){
    #     echo $(($1 * $2))
    # }
    # Div(){
    #     echo "scale=2;$1 / $2" | bc
    # }

    # read -p $'1.ADD\n2.SUB\n3.MUL\n4.DIV\nEnter your option: ' opt
    # if ((0<opt && opt<=4))
    # then
    #     read -p "Enter two Numbers: " a b
    #     if [[ $a =~ ^[0-9]+$ && $b =~ ^[0-9]+$ ]]
    #     then
    #         a=$((10#$a))
    #         b=$((10#$b))
    #         if ((opt == 1))
    #         then
    #             echo $(Add "$a" "$b")
    #         elif ((opt == 2))
    #         then
    #             echo $(Sub "$a" "$b")
    #         elif ((opt == 3))
    #         then
    #             echo $(Mul "$a" "$b")
    #         elif ((opt == 4))
    #         then
    #            if (($a == 0 || $b == 0))
    #            then
    #                echo "Zero cannot be Divisible!"
    #             else
    #             echo $(Div "$a" "$b")    
    #             fi
    #         else
    #            echo "Error:)"   
    #         fi 
    #     else
    #        echo "InValid Input!"    
    #     fi             
    # else
    #     echo "InValid Option!"
    # fi    

# File Validation Function
    # File_val(){
    #     read -p "Enter a File_name: " f_name 
    #     if [[ -f $f_name ]]
    #     then
    #         if [[ -r $f_name ]]
    #         then
    #             echo "$f_name Exists and is Readable"
    #         else
    #             echo "$f_name is not Readable!"
    #         fi
    #     else
    #         echo "$f_name Doesn't Exist!" 
    #     fi
    # }

    # File_val
            