#! /bin/bash

# Disk Usage
    # threshold=80
    # disk_usage=$(df -h /mnt/c/ | awk 'NR==2 {print $5}' | sed 's/%//g')
    # if ((disk_usage < threshold)); then
    #     echo "Disk Usage: $disk_usage%"
    #     echo "Disk Usage is Normal"
    # else
    #     echo "Disk Usage: $disk_usage%"
    #     echo "Disk Usage exceeds the threshold of $threshold%"
    # fi

# Automated Backup
    # read -p "Enter Directory: " dir
    # if [ -d $dir ]; then
    #     time=$(date +"%Y%m%d_%H%M%S")
    #     name="${dir}_Backup_${time}"
    #     tar -czvf $name.tar.gz $dir
    # else
    #     echo "Can't find $dir"   
    # fi

# Log Analyzer
    # read -p "Enter log file: " log
    # if [ -f "$log" ]; then
        
    #     errors=$(grep -ic "ERROR" "$log")
    #     warns=$(grep -ic "WARNING" "$log")
    #     success=$(grep -ic "SUCCESS" "$log")
    #     ips=$(awk '{print $1}' "$log" | sort -u | wc -l )
    #     users=$(awk '{print $2}' "$log" | sort | uniq | wc -l)
    #     echo "ERRORS : $errors"
    #     echo "WARNINGS : $warns"
    #     echo "SUCCESSFUL REQUESTS : $success"
    #     echo "USERS : $users"
    #     echo "IPs : $ips"
    # else
    #     echo "File doesn't Exist!"
    # fi   

# Process Management
    # read -p $'1.Display\n2.Search\n3.Inspect\n4.Terminate\n > ' opt
    # case $opt in 
    # 1 )
    #     ps -ef ;;
    # 2 )
    #     read -p "Enter process name : " pname
    #     pgrep -f $pname  ;;
    # 3 )
    #     read -p "Enter process ID : " pid
    #     ps -p $pid -f ;;
    # 4 )
    #     read -p "Enter process ID: " pid
    #     kill $pid ;;
    # * )
    #     echo "Invalid Option!" ;;
    # esac

# File Cleanup
    # read -p "Enter days: " day
    # old_files=$(find ./Dir -type f -mtime +$day) 
    # if [ -z "$old_files" ]; then
    #     echo "No files found!"
    # else
    #     echo "$old_files"
    #     read -p "Delete these files(y/n): " opt
    #     if [ "$opt" == "y" ] ; then
    #         rm $old_files
    #     fi
    # fi
