#!/bin/bash

# Array Display
    # arr=()
    # for i in {1..10..1}
    # do
    # arr[$(($i-1))]="$i"
    # done
    # echo "${arr[@]}"
  
# Array Sum  
    # sum=0
    # for i in ${arr[@]}
    # do
    # ((sum+=$i))
    # done   
    # echo "Sum: $sum"

# Maximum and Minimum
    # min=${arr[0]}
    # max=${arr[0]}
    # len=${#arr[@]}
    # for((i=0; i<$len; i++))
    # do
    # j=$(($i+1))
    # if [[ $j -le $len ]]
    # then
    #     if [[ ${arr[i]} < ${arr[j]} && ${arr[i]} -le $min ]]
    #     then
    #         min=${arr[i]}
    #     elif [[ ${arr[i]} -ge ${arr[j]} && ${arr[i]} -ge $max ]]
    #     then
    #         max=${arr[i]} 
    #     fi
    # fi   
    # done
    # echo -e "Minimum: $min \nMaximum: $max"

# Array Average
    # sum=0
    # for i in ${arr[@]}
    # do
    # ((sum+=$i))
    # done   
    # echo "Sum: $sum"
    # avg=$(echo "scale=2;(($sum/${#arr[@]}))" |bc )
    # echo "Average: $avg"

# Array Search
    # read -p "Enter your search word? " key 
    # count=0
    # if [[ $key != *" "* ]]
    # then
    #     for i in ${!arr[@]}
    #     do
    #     if [[ ${arr[i]} == $key ]]
    #     then
    #         echo "You can find your word/character at index: $((i+1))"
    #         ((count++))
    #     fi
    #     done
    #     if [[ $count -eq 0 ]]
    #     then
    #         echo "Can't find your search!"
    #     fi  
    # else 
    # echo "Can't find multiple words!"     
    # fi    

# Reverse Array
    # rev_arr=()
    # len=$((${#arr[@]}-1))
    # for i in "${!arr[@]}"
    # do 
    # rev_arr[$len]=${arr[i]}
    # ((len--))
    # done
    # echo "${rev_arr[@]}"  
    
# Sort Array
    # Sort(){
    #   local arr=("$@")
    #   local len=${#arr[@]}
    #   local mid=$(($len/2))
    
    #   if (($len <= 1))
    #   then
    #      echo "${arr[@]}"
    #      return
    #   fi   
    
    #   left=$(Sort "${arr[@]:0:$mid}")    
    #   right=$(Sort "${arr[@]:$mid}") 
    #   result=$(Merge "$left" "$right")
    #   echo "$result"

    # } 

    # Merge(){
    #    local lft=($1)
    #    local rgt=($2)
    #    i=0
    #    j=0
    #    local result=()
        
    #    while ((i < ${#lft[@]} && j < ${#rgt[@]})) 
    #    do
    #       if ((${lft[i]} <= ${rgt[j]}))  
    #       then
    #          result+=("${lft[i]}")
    #          ((i++))
    #       else
    #           result+=("${rgt[j]}")
    #          ((j++)) 
    #       fi      
    #     done

    #     while ((i < ${#lft[@]} ))
    #     do
    #       result+=("${lft[i]}")
    #       ((i++))
    #     done

    #     while ((j < ${#rgt[@]}))
    #     do
    #       result+=("${rgt[j]}")
    #       ((j++))
    #     done

    #    echo "${result[@]}"     
    

    # }

    # array=(5 4 6 9 3 2 8 1 7 10 18 17 19 16 14 12 15 20 11 13)
    # sorted=$(Sort "${array[@]}")
    # echo  "${sorted[@]}"

# Duplicate Elements
    # Duplicate(){
    #     local arr=("$@")
    #     local len=${#arr[@]}
    #     i=0
    #     local result=()

    #     while ((i<len))
    #     do
    #         count=0
    #         for k in "${result[@]}"
    #         do
    #             if [[ ${arr[i]} == "$k" ]]
    #             then
    #                 ((i++))
    #                 break
    #             fi
    #         done  
    #         j=$(($i+1))
    #         while ((j<len))
    #         do
    #             if [[ ${arr[i]} == ${arr[j]} ]]
    #             then
    #                 ((count++)) 
    #                 break
    #             fi
    #             ((j++))
    #         done
    #         if (($count > 0)) 
    #         then
    #             result+=("${arr[i]}")
    #         fi  
    #         ((i++))
    #     done
    #     echo "${result[@]}"       

    # }

    # arr=(1 1 3 4 2 6 4 5 7 4 9 7 5 9 2)
    # result=$(Duplicate ${arr[@]})
    # echo "${result}"