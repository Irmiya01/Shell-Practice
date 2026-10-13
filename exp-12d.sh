#! /bin/bash

CPU(){
    top -bn1 | grep "Cpu(s)" | awk -F"[ ,]+" '{print 100 - $8 "%"}'
}

Memory(){
    free | grep "Mem" | awk '{print $3/$2 * 100 "%"}'
}

Disk(){
    df -h / | awk 'NR==2{print $5}'
}

Uptime(){
    uptime -p
}

User(){
    who | awk '{print $1}'
}

Process(){
    ps | awk '{print $1 "  " $4}'
}

echo "1. CPU: $(CPU)"
echo "2. Memory: $(Memory)"
echo "3. Disk: $(Disk)"
echo "4. Uptime: $(Uptime)"
echo "5. Users: $(User)"
echo -e "6. Process:\n $(Process)"