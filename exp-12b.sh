#! /bin/bash
# Employee Management System
Add_Record(){
    repeat=true
    while $repeat
    do
        read -p "Employee ID: " id
        if [[ -z $id || $id == *"::"* ]]
        then
            echo "ID shouldn't be blank or has '::'"
            continue
        fi   
        if ! grep -iq "^$id::" emp_records.txt 
        then
            while true
            do
                read -p "Enter Name: " name
                read -p "Enter Department: " department
                if [[ $name == *"::"* || $department == *"::"* ]]
                then
                    echo "Name and Department shouldn't contain '::'"
                    continue
                else
                    break
                fi  
            done
            while true
            do
                read -p "Enter Salary: " salary
                if [[ $salary =~ ^[0-9]+$ ]]
                then
                    echo "$id::$name::$department::$salary" >> emp_records.txt
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
    awk -F"::" -v align="$align" '{printf align ,$1, $2, $3, $4}' emp_records.txt
}

Search(){
    read -p "Enter Employee Id: " id
    echo "$header"
    awk -F"::" -v id="$id" -v align="$align" '$1 == id {printf align, $1, $2, $3, $4;found=1} 
    END{if (!found) print "No record found"}' emp_records.txt
}

Update_record(){
    read -p "Enter ID:" id
    if grep -q "^$id::" emp_records.txt
    then
        read -p $'\nWhat do you want to update?-\n1.ID\n2.Name\n3.Department\n4.Salary\n > ' opt
        case $opt in
        1 ) 
            read -p "Enter new ID: " new      ;;
        2 )
            read -p "Enter new Name: " new        ;;
        3 ) 
            read -p "Enter new Department: " new        ;;
        4 )
            read -p "Enter new Salary: " new        ;;
        * )
            echo "Invalid option!" ;return 1       ;;
        esac
        awk -F"::" -v OFS="::" -v id="$id" -v opt="$opt" -v new="$new" '$1==id {$opt = new} {print}
        ' emp_records.txt > records.tmp && mv records.tmp emp_records.txt && echo "Record Updated"
    else
        echo "Can't find $id!"
    fi
}
Del_record(){
    read -p "Enter ID:" id
    if grep -q "^$id::" emp_records.txt
    then
        awk -F"::" -v id="$id" '$1!=id {print}
        ' emp_records.txt > records.tmp && mv records.tmp emp_records.txt && echo "Record Deleted"
    else
        echo "Can't find $id!"
    fi      
}   

align="%-5s %-19s %-15s %-10s\n"
header=$(printf "$align" "ID" "Name" "Department" "Salary")
while true :
do
    read -p $'\n\n1.Add \n2.Display \n3.Search \n4.Update\n5.Delete\n6.Exit!\n\nWhat do you Choose? > ' choice
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