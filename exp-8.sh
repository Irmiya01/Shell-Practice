#! /bin/bash

# Count File Type
    # echo -e "No.of Directories: \c"
    # find Dir -type d | wc -l

    # echo -e "No.of Regular Files: \c"
    # find Dir -type f | wc -l

    # echo -e "No.of Symbolic Links: \c"
    # find Dir -type l | wc -l

# Recursive File Search
    # read -p "Enter filename: " file_name
    # result=$(find . -iname $file_name)
    # if [[ -n $result ]]
    # then 
    #     echo "$result"
    # else
    #     echo "Cannot find $file_name!"
    # fi

# Largest File
    # find . -type f -printf '%s %p\n'| sort -nr | head -1 | numfmt --field=1 --to=iec

# All empty files
    # find . -type f -empty -printf '%s %p\n' 

# Extension Count
    # formats="txt sh cpp c log" 
    # find . -type f -printf '%f\n' |
    # grep -E "\.(${formats// /|})$"   |
    # sed 's/.*\.//' |
    # sort |
    # uniq -c

# Directory Backup  
    # read -p "Enter Directory you want to backup:" dir
    # if [[ -d $dir ]]
    # then
    #     cp -Rv $dir Backup
    # else
    #     echo "Cannot find $dir!"
    # fi         

# File Organizer
    # read -p "Enter Directory:" dir
    # if [[ -d "$dir" ]]
    # then
    #    for file in "$dir"/*
    #    do
    #    if [[ -f "$file" ]]
    #    then
    #       ext=${file##*.}
    #       mkdir -p "$dir/$ext"
    #       mv "$file" "$dir/$ext/"
    #     fi  
    #     done
    # else 
    #    echo "Can't find $dir Directory!"    
    # fi       