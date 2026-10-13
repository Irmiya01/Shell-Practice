#! /bin/bash
# Student Management System
Add_Record(){
    repeat=true
    while $repeat
    do
        read -p "Student ID: " id
        if [[ -z $id || $id == *"::"* ]]
        then
            echo "ID shouldn't be blank or has '::'"
            continue
        fi   
        if ! grep -iq "^$id::" students_records.txt 
        then
            # if new ID then add
            while true
            do
                read -p "Enter Name: " name
                read -p "Enter Branch: " branch
                if [[ $name == *"::"* || $branch == *"::"* ]]
                then
                    echo "Name and Branch shouldn't contain '::'"
                    continue
                else
                    break
                fi  
            done
            while true
            do
                read -p "Enter marks: " marks
                if [[ $marks =~ ^[0-9]+$ && $marks -le 100 ]]
                then
                    echo "$id::$name::$branch::$marks" >> students_records.txt
                    break
                else
                    echo "Invalid Input!"
                fi
            done
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

Show_records(){
    echo "$header"
    awk -F"::" -v align="$align" '{printf align ,$1, $2, $3, $4}' students_records.txt
}

Search(){
    read -p "Enter Student Id: " id
    echo "$header"
    awk -F"::" -v id="$id" -v align="$align" '$1 == id {printf align, $1, $2, $3, $4;found=1}
     END{if (!found) print "No record found"}' students_records.txt
}

Update_record(){
    read -p "Enter ID:" id
    if grep -q "^$id::" students_records.txt
    then
        read -p $'\nWhat do you want to update?-\n1.ID\n2.Name\n3.Branch\n4.Marks\n > ' opt
        case $opt in
        1 ) 
            read -p "Enter new ID: " new      ;;
        2 )
            read -p "Enter new Name: " new        ;;
        3 ) 
            read -p "Enter new Branch: " new        ;;
        4 )
            read -p "Enter new Marks: " new        ;;
        * )
            echo "Invalid option!" ;return 1       ;;
        esac
        awk -F"::" -v OFS="::" -v id="$id" -v opt="$opt" -v new="$new" '$1==id {$opt = new} {print}
        ' students_records.txt > records.tmp && mv records.tmp students_records.txt && echo "Record Updated"
    else
        echo "Can't find $id!"
    fi
}
Del_record(){
    read -p "Enter ID:" id
    if grep -q "^$id::" students_records.txt
    then
        awk -F"::" -v id="$id" '$1!=id {print}
        ' students_records.txt > records.tmp && mv records.tmp students_records.txt && echo "Record Deleted"
    else
        echo "Can't find $id!"
    fi      
}   

align="%-5s %-19s %-13s %-5s\n"
header=$(printf "$align" "ID" "Name" "Branch" "Marks")
while true :
do
    read -p $'\n\n1.Add student\n2.Display Students\n3.Search Student\n4.Update\n5.Delete\n6.Exit!\n\nWhat do you Choose? > ' choice
    echo 
    case $choice in 
        1 )
            Add_Record  ;;
        2 ) 
            Show_records ;;
        3 )
            Search ;;
        4 )
            Update_record ;;
        5 )
            Del_record ;;
        6 )
            break ;;
        * )
            echo -e "Wrong Choice! :)\n" ;;
        esac
done