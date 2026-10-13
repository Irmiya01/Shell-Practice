#!/bin/bash

# Calculator Menu
    echo -e "CALCULATOR\n"
    while true
    do
        echo -e "1.Addition \n2.Subtraction \n3.Multiplication \n4.Division \n5.Exit!\n"  
        read -p "Enter your option:" menu
        case $menu in 
        "1" )
            read -p "Enter two Numbers to Add:" a b 
            echo $(( $a + $b ))    ;;
        "2" )
            read -p "Enter two Numbers to Sub:" c d
            echo $(( $c - $d ))   ;;
        "3" )
            read -p "Enter two Numbers to Mul:" e f
            echo $(( $e * $f ))   ;;    
        "4" )
            read -p "Enter two Numbers to Div:" g h
            div=$(echo "scale=2; $g / $h "| bc)
            echo $div            ;;
        "5" )
            echo "Exiting......."
            exit                 ;;
        * )
            echo InValid option! 
        esac 
        echo
    done       

# Day of Week
    # echo -e "DAY OF WEEK\n"
    # read -p "Enter day(1-7):" day
    # if [[ $day =~ ^[1-7]$ ]]
    # then
    #    case $day in 
    #    1 )
    #     echo Sunday ;;
    #    2 )
    #     echo Monday ;;
    #    3 )
    #     echo Tuesday ;;
    #    4 )
    #     echo Wednesday ;;
    #    5 )
    #     echo Thursday ;;
    #    6 )
    #     echo Friday ;;
    #    7 )
    #     echo Saturday ;;
    #    * )
    #     echo "Enter Day of Week(1-7)"       
    #    esac
    # else
    #    echo InValid Input!  
    # fi     

# Month of Year
    # echo -e "MONTH OF YEAR\n"
    # read -p "Enter Month(1-12):" month
    # if [[ $month =~ ^1[0-2]|[1-9]$ ]]                    # This codition accepts 1-12  [1-9] or 1[0-2]
    # then
    # case $month in 
    # 1 )
    #     echo January ;;
    # 2 )
    #     echo February ;;
    # 3 )
    #     echo March ;;
    # 4 )
    #     echo April ;;
    # 5 )
    #     echo May ;;
    # 6 )
    #     echo June ;;
    # 7 )
    #     echo July ;;
    # 8 )
    #     echo August ;;
    # 9 )
    #     echo September ;;
    # 10 )
    #     echo October ;;
    # 11 )
    #     echo November ;;
    # 12 )
    #     echo December ;; 
    # * )
    #     echo "InValid Month"       
    # esac
    # else
    # echo InValid Input!  
    # fi     

# File Operation Menu
    # echo -e "File Operation Menu\n"
    # echo -e "1.Create \n2.Display \n3.Copy \n4.Rename \n5.Remove\n"  
    # read -p "Enter your option:" file_menu
    # case $file_menu in 
    # "1" )
    #     read -p "Enter File Name:" file 
    #     echo Creating "$file"...
    #     sleep 2
    #     touch "$file"      ;;
    # "2" )
    #     read -p "Enter file Name(& Path):" dis
    #     echo -e "Displaying "$dis"...\n"
    #     sleep 2   
    #     cat "$dis"       ;;
    # "3" )
    #     read -p "Enter Src_file and Dst_file(&paths):" src dst
    #     echo Copying "$src" to "$dst"...
    #     sleep 2
    #     cp "$src" "$dst"   ;;    
    # "4" )
    #     read -p "Enter File Name and New Name:" old new
    #     echo Renaming "$old" to "$new"...
    #     sleep 2
    #     mv "$old" "$new"            ;;
    # "5" )
    #     read -p "Enter a file to Delete:" del
    #     echo Deleting "$del"...
    #     sleep 3
    #     rm "$del"                 ;;
    # * )
    #     echo InValid option! 
    # esac    

# System Information Menu
    # echo -e "SYSTEM INFO MENU\n"
    # echo -e "1.Date\n2.Calendar\n3.User\n4.Current Directory\n5.System Info\n"
    # read -p "Enter your choice:" opt
    # case $opt in
    # 1 )
    # echo -e "DATE: \c"
    # date
    # echo    ;;
    # 2 )
    # echo CALENDAR:
    # cal
    # echo  ;;
    # 3 )
    # echo -e "User:  \c":
    # whoami
    # echo   ;;
    # 4 )
    # echo -e "Current Directory:  \c"
    # pwd
    # echo  ;;
    # 5 )
    # echo -e "System Info:  \c"
    # uname 
    # echo  ;;
    # * )
    # echo InValid Option! ;;
    # esac            