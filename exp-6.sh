#! /bin/bash

# String Length
    # read -p "Enter a String: " st
    # if [[ $st =~ ^[A-Za-z" "]+$ ]]
    # then
    # echo "${#st}"
    # else 
    # echo "InValid String!"
    # fi      

# Reverse String
    # read -p "Enter a String: " st1
    # if [[ $st1 =~ ^[A-Za-z" "]+$ ]]
    # then 
    # echo "${st1}" | rev
    # else  
    # echo "Invalid String!"
    # fi      

# Palindrome String
    # read -p "Enter a String: " st2
    # if [[ $st2 =~ ^[A-Za-z" "]+$ ]]
    # then 
    # ts=$(echo "${st2}" | rev)
    # if [[ "$st2" == "$ts" ]]  
    # then 
    # echo "Palindrome!"
    # else
    # echo "not a Palindrome!"
    # fi      
    # else  
    # echo "Invalid String!"
    # fi      

# Vowel Count
    # read -p "Enter a String: " str
    # if [[ $str =~ ^[A-Za-z" "]+$ ]]
    # then
    # count=0
    # vow=$(echo "${str,,}")                                                                                             # convert to lower case
    # for((i=0;i<${#str};i++))
    # do
    #     if [[ ${vow:i:1} == "a" || ${vow:i:1} == "e" || ${vow:i:1} == "o" || ${vow:i:1} == "u" || ${vow:i:1} == "i" ]]
    #     then
    #     ((count++))
    #     fi   
    #     done
    #     echo "$count"
    # else
    # echo "InValid String!"   
    # fi    

# Case Conversion
    # low_case="hello good morning!"
    # up_case="HELLO GOOD MORNING!"
    # echo -e "${low_case} > ${low_case^^} \n"
    # echo "${up_case} > ${up_case,,}"

# Character Frequency
    # read -p "Enter a String: " str
    # if [[ $str =~ ^[A-Za-z" "]+$ ]]
    # then
    # low_str=$(echo "${str,,}")
    # count=0
    # read -p "Enter a Character: " char
    # low_char=$(echo "${char,,}")
    # for(( i=0; i<${#str}; i++))
    # do
    #     if [[ ${low_str:i:1} == $low_char ]]
    #     then
    #         ((count++))
    #     fi
    #     done
    #     if [[ $count -eq 0 ]]
    #     then
    #         echo "Can't find $char in the String!"
    #     else
    #         echo "$char repeats $count times!" 
    #     fi        
    # else
    # echo "InValid String!"  
    # fi     

# String Comparison    
    # read -p "Enter first String: " str1 ;str1=${str1,,}
    # read -p "Enter second String: " str2 ;str2=${str2,,}
    # if [[ ${#str1} == ${#str2} ]]
    # then
    #     check=0
    # for(( i=0; i<${#str1}; i++ ))
    # do
    # if [[ ${str1:i:1} != ${str2:i:1} ]]
    # then
    #         check=1
    #         break                
    #     fi  
    #     done
    #     if [[ $check == 0 ]]
    #     then
    #     echo "Both are Equal!"
    #     else
    #     echo "Both are not Equal!"   
    #     fi
    # else
    # echo "Both are not Equal!"
    # fi    