#! /bin/bash

# Add students
Add_Student(){
    repeat=true
    while $repeat
    do
        read -p "Student ID: " id
        if [[ -z $id || $id == *"::"* ]]
        then
            echo "ID shouldn't be blank or has '::'"
            continue
        fi   
        if ! grep -iq "^$id::" Students_Management.txt 
        then
            while true
            do
                read -p "Enter Name: " name
                if [[ -z $name || $name == *"::"* ]]
                then
                    echo "Name shouldn't be Empty or contain '::'"
                    continue
                else
                    break
                fi  
            done
            echo "$id::$name::-::0" >> Students_Management.txt
        else
            echo "This $id already Exists!"
        fi
        read -n 1 -p "(press anykey to continue OR '!' to exit!)" choice
        echo
        if [[ $choice == "!" ]]
        then
           repeat=false
        fi   
    done
}

# View Student List
List(){
    printf "%-8s %-9s\n" "ID" "NAME"
    awk -F"::" '{printf "%-8s %-9s\n",$1,$2}' Students_Management.txt
}

# Mark Attendance
Mark(){
    today=$(date +%F)
    last_date=$(tail -n 1 "Working_days.txt")
    if [[ $last_date == $today ]]; then
        echo "Attendance already marked!"
        return
    else
        i=1
        while (( i<=$total ))
        do
            id=$(awk -F"::" -v i=$i 'NR==i {print $1}' Students_Management.txt)
            read -p "$id (p/x): " opt
            if [ "$opt" == "p" ]; then
                awk -F"::" -v OFS="::" -v id="$id" '$1==id {$3="p";$4++} {print}
                 '  Students_Management.txt > stu_temp.txt && mv stu_temp.txt Students_Management.txt
                ((i++))
            elif [ "$opt" == "x" ]; then 
                awk -F"::" -v OFS="::" -v id="$id" '$1==id {$3="x"} {print}
                ' Students_Management.txt > stu_temp.txt && mv stu_temp.txt Students_Management.txt
                ((i++))
            else
                echo "Invalid!"
            fi  
        done 
        echo $today >> Working_days.txt  
    fi

}
# View Attendance
View(){
    awk -F"::" -v total=$total '
    {printf "%-7s %-5s\n",$1,$3 } 
    $3=="p"{sum ++} 
    END{printf "%-25s %.2f%%\n", "Attendance Percentage:", sum / total * 100} 
    ' Students_Management.txt
}

# Search Student
Search(){
    read -p "Enter Student ID: " id
    if ! grep -q "^$id::" Students_Management.txt
    then
        echo "Can't find Student!"
    else
        awk -F"::" -v id="$id" -v work_days="$work_days" '
        $1==id{
         if($3=="p"){
         print $1 " " $2 ", Present" } 
         else if($3=="x"){
         print $1 " "$2 ", Absent" }
         else{
         print $1" "$2 ", Not Marked"}
         } 
         ' Students_Management.txt
    fi     
}
# Student Attendance percentage
Att_Percent(){
    read -p "Enter Student ID: " id
    if ! grep -q "^$id::" Students_Management.txt
    then
        echo "Can't find Student!"
    else
        awk -F"::" -v id="$id" -v work_days="$work_days" '$1==id{
        printf "%-10s %-16s %.2f%%\n", $2, "Attendance %:", $4/work_days * 100  }
        ' Students_Management.txt
    fi 
}
# Students Requiring Attention
Attention_Req(){
    echo "Students Requiring Attention:"
    echo "--------------------------------"
    awk -F"::" -v threshold=65 -v work_days=$work_days '
    ($4/work_days * 100) < threshold {
    printf "%-8s %-10s %-2.2f%%\n",$1,$2,($4/work_days * 100)}
    '  Students_Management.txt
}
# Generate Summary
Summary(){
    printf "%-25s %s\n" "Total Students:" "$total"
    reg_attendees=$(awk -F"::" -v threshold=65 -v work_days=$work_days  '($4 / work_days * 100) >= threshold {
    sum++ } END{print sum+0}'  Students_Management.txt)
    printf "%-25s %-7s\n" "Regular Attendees:" "$reg_attendees"
    printf "%-25s %s\n" "Irregular Attendees:" "$(($total - $reg_attendees))"
    absentees=$(awk -F"::" '$3=="x" {count++} END{print count+0}' Students_Management.txt)
    printf "%-25s %s\n" "Students Absent:" "$absentees"
    awk -v ab="$absentees" -v total="$total" 'BEGIN{if (total>0) printf "%-25s %.2f%%\n", 
    "Attendance Percentage: ", (total-ab) / total * 100}'
}
# Backup Data
Backup(){
    timestamp=$(date +%Y-%m-%d-%H-%M-%S)
    mkdir -p ./Backups
    if tar -czf ./Backups/"Backup_${timestamp}.tar.gz" "Students_Management.txt" "Working_days.txt";then
        echo "Backup Complete @ ./Backups"
    else
        echo "Backup failed!"
    fi
}

work_days=0
while true
do
    work_days=$(wc -l < "Working_days.txt")
    total=$(wc -l < Students_Management.txt)
    read -p $'\n1.Add Student\n2.View Student List\n3.Mark Attendance\n4.View Attendance
5.Search Student\n6.Student Attendance Percentage\n7.Students Requiring Attention
8.Generate Summary\n9.Backup Data\n10.Exit\n >  ' opt
    case $opt in
    1 )
        Add_Student ;;
    2 )
        if [ $total -eq 0 ]; then 
            echo "No Students found!"
            echo "Add Students"
        else
            List
        fi      ;;
    3 )
        if [ $total -eq 0 ]; then 
            echo "No records to Mark!"
            echo "Add Students"
        else
            Mark
        fi      ;;
    4 )
        if [ $total -eq 0 ]; then 
            echo "No records to View!"
            echo "Add Students"
        else
            View
        fi      ;;
    5 )
        Search ;;
    6 )
        if  (($work_days > 0));then
            Att_Percent 
        else
            echo "Working Days aren't Recorded!"
            echo "First Mark Attendance"  
        fi        ;;
    7 )
        if (($work_days > 0));then
            Attention_Req 
        else
            echo "Working Days aren't Recorded!"
            echo "First Mark Attendance"  
        fi      ;;
    8 )
        if (($work_days > 0));then
            Summary 
        else
            echo "Working Days aren't Recorded!"
            echo "First Mark Attendance"  
        fi ;;
    9 )
        Backup ;;
    10 )
        break ;;
    * )
        echo "Invalid Input!" ;;
    esac
done    