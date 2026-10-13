#! /bin/bash

# Linux Administration Tool
# Build a menu-driven administration tool combining system information, disk, memory, CPU, users,
# processes, search, backup, and exit options.

System(){
    uname -a
}

Disk(){
    disk=$(df -h / | awk 'NR==2{print $5}')
    echo "Disk Usage: $disk"
}

Memory(){
    mem=$(free | grep "Mem" | awk '{print $3/$2 * 100 "%"}')
    echo "Memory Usage: $mem"
}

CPU(){
    cpu=$(top -bn1 | grep "Cpu(s)" | awk -F"[ ,]+" '{print 100 - $8 "%"}')
    echo "CPU Usage: $cpu"
}

User(){
    echo "Users: $(who)"
}

Process(){
    process=$(ps | awk '{print $1 "  " $4}')
    echo -e "Processes:\n$process"
}

Search(){
    read -p "Enter file_name: " file
    if [ -f "$file" ]; then
       find . -name "$file"
    else
        echo "Can't find $file"
    fi       
}

Backup(){
    read -p "Enter Directory: " dir
    if [ -d "$dir" ]; then
        name="Backup"
        tar -czvf "$name.tar.gz" "$dir"
    else
        echo "Can't find $dir"   
    fi
}    

while true
do
    read -p $'1.System information\n2.Disk Usage\n3.Memory Usage\n4.CPU\n5.Users\n6.processes\n7.Search\n8.Backup\n9.Exit\n > ' opt
    case $opt in
    1 )
        System ;;
    2 )
        Disk ;;
    3 )
        Memory ;;
    4 )
        CPU ;;
    5 )
        User ;;
    6 )
        Process ;;
    7 )
        Search ;;
    8 )
        Backup ;;
    9 )
        exit ;;
    * )
        echo "Invalid Option" ;;
    esac
    echo
done    