#! /bin/bash

# grep Search
   # read -p "Enter a search word:" search  
   # if grep --color=auto "$search" new.txt
   # then  
   #    echo
   # else
   #    echo "Cannot find $search!"    
   # fi  

# Case-Insensitive Search
   # read -p "Enter a search word:" search  
   # if grep -i --color=auto "$search" new.txt
   # then  
   #    echo
   # else
   #    echo "Cannot find $search!"    
   # fi  

# Matching Line Count
   # read -p "Enter a search word:" search  
   # rep=$(grep -ic --color=auto "$search" new.txt)
   # if (($rep > 0))
   # then  
   #    echo "$search repeats $rep times"
   # else
   #    echo "Cannot find $search!"    
   # fi     

# Line Numbers
   # read -p "Enter a search word:" search  
   # if grep -in --color=auto "$search" new.txt
   # then  
   #    echo
   # else
   #    echo "Cannot find $search!"    
   # fi 

# sed Replace
   # read -p "Enter a word to replace:" my_word
   # if grep -q "$my_word" new.txt
   # then
   #    read -p "Enter a word to replace with:" rep_word
   #    sed -i "s/$my_word/$rep_word/g" new.txt
   #    echo
   #    grep --color=auto "$rep_word" new.txt 
   # else
   #    echo "Cannot find $my_word!"   
   # fi   

# Delete Blank Lines
   # sed -i 's/\r$//;/^$/d' new.txt

# awk Column Extraction
   # cat awk_file.txt
   # echo -e "\n\nThird column:"
   # awk '{print $3}' awk_file.txt

# awk Average
   # awk '{print $NF}' awk_file.txt
   # awk -v msg="Average: " '{ print msg $NF / 2 }'  awk_file.txt 