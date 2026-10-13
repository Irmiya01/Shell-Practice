#!/bin/bash

# Even or Odd
echo -e "Even or Odd\n"
read -p "Enter a number:" num
if [[ $num =~ ^[0-9]+$ ]]                          # regrex condition
then
    if [[ $(($num % 2)) -eq 0 ]]
    then
       echo $num is even
    else
       echo $num is odd
    fi
else
   echo "Only Positive integer values are allowed!"    
fi
echo "-----------------------------------------------------------------"

# Number Sign
echo -e "Number Sign\n"
read -p "Enter a number:" num1
if [[ $num1 =~ ^-?[0-9]+$ ]]                     # regrex condition
then
    if [[ $num1 -gt 0 ]]
    then
       echo $num1 is positive
    elif  (( $num1 < 0 ))
    then
       echo $num1 is negative
   else
       echo $num1
    fi
else
   echo "Only integer values are allowed!"    
fi
echo "-----------------------------------------------------------------"

# Largest of two Numbers
echo -e "Largest of two Numbers\n"
read -p "Enter two numbers:" num2 num3
if [[ $num2 =~ ^-?[0-9]+$ && $num3 =~ ^-?[0-9]+$ ]]                     # regrex condition
then
   if (( $num2 != $num3  ))
   then
      if [[ $num2 -gt $num3 ]]
      then
         echo $num2 is Largest
      else
         echo $num3 is Largest
       fi
   else
      echo $num2 and $num3 are equal
   fi
else
   echo "Only integer values are allowed"   
fi
echo "-----------------------------------------------------------------"

# Largest among Three Numbers
echo -e "Largest among Three Numbers\n"
read -p "Enter three numbers:" num4 num5 num6
if [[ $num4 =~ ^-?[0-9]+$ && $num5 =~ ^-?[0-9]+$ && $num6 =~ ^-?[0-9]+$ ]]                     # regrex condition
then
   if (( $num4 != $num5 && $num4 != $num6 && $num5 != $num6 ))
   then
      if [[ $num4 -ge $num5 && $num4 -ge $num6 ]]
      then
         echo $num4 is Largest
      elif [[ $num5 -ge $num4 && $num5 -ge $num6 ]]
      then
         echo $num5 is Largest
      else
         echo $num6 is Largest
      fi
   else
      echo All are equal..
   fi
else
   echo "Only integer values are allowed"   
fi
echo "-----------------------------------------------------------------"


# Smallest of Three
echo -e "Smallest of Three\n"
read -p "Enter three numbers:" num7 num8 num9
if [[ $num7 =~ ^-?[0-9]+$ && $num8 =~ ^-?[0-9]+$ && $num9 =~ ^-?[0-9]+$ ]]                     # regrex condition
then
   if (( $num7 == $num8 && $num8 == $num9 ))
   then
      echo $num7,$num8,$num8 are equal
   else
      if [[ $num7 -le $num8 && $num7 -le $num9 ]]
      then
         echo $num7 is Smallest
      elif [[ $num8 -le $num7 && $num8 -le $num9 ]]
      then
         echo $num8 is Smallest
      else
         echo $num9 is Smallest
      fi
   fi
else
   echo "Only integer values are allowed"   
fi
echo "-----------------------------------------------------------------"

# Vote Eligibility
echo -e "Vote Eligibility\n"
read -p "Enter Age:" age
if [[ $age =~ ^[0-9]+$ ]]                     # regrex condition
then
    if (( $age >= 18 && $age <= 100 ))
    then
       echo Eligible to vote
    elif [[ $age -lt 18 ]]
       then
          echo Not Eligible to vote
    else
          echo Enter reasonable age
    fi
else
   echo "InValid Age!"    
fi
echo "-----------------------------------------------------------------"

# Pass or Fail
echo -e "Pass or Fail\n"
read -p "Enter marks:" marks
if (( marks >= 40 && marks <= 100))
then
   echo Pass
elif (( marks >= 0 && marks < 40 ))
then
   echo Fail
else
   echo InValid Marks!
fi 
echo "-----------------------------------------------------------------"     

# Grade Calculator
echo -e "Grade Calculator\n"
read -p "Enter marks:" score
if [[ $score =~ ^[0-9]+$ ]]
then
   if (( score >= 90 && score <= 100 ))
    then
        echo "A grade"

    elif (( score >= 80 && score < 90 ))
    then
        echo "B grade"

    elif (( score >= 60 && score < 80 ))
    then
        echo "C grade"

    elif (( score >= 50 && score < 60 ))
    then
        echo "D grade"

    elif (( score >= 40 && score < 50 ))
    then
        echo "E grade"

    elif (( score >= 0 && score < 40 ))
    then
        echo "Fail!"

    else
        echo "Invalid Marks!"
    fi
else
   echo Invalid Input!
fi 
echo "-----------------------------------------------------------------"

# Leap Year
echo -e "Leap Year\n"
read -p "Enter year:" year
if [[ $year =~ ^[0-9]+$ ]]
then
   if (( year%400 == 0 )) 
   then
      echo $year is Leap Year
   elif (( year%100 != 0 && year%4 == 0 )) 
   then
      echo $year is Leap Year
   else
      echo $year is not a Leap Year
   fi
else
   echo InValid Input!
fi  
echo "-----------------------------------------------------------------"             

# File Test
echo -e "File Test\n"
read -p "Enter Filename:" file
if [[ -e $file ]]
then
   echo $file Exists
   if [[ -r "$file" && -w "&file" && -x "$file" ]]
   then
      echo $file has all permissions
   elif [[ -r "$file" && -w "$file" ]]
   then
      echo $file is readable and writable
   elif [[ -r "$file" && -x "$file" ]]
   then
      echo $file is readable and executable
   elif [[ -w "$file" && -x "$file" ]]
   then
      echo $file is writable and executable  
   else
      echo $file has no permissions    
   fi 
else
   echo "$file Doesn't Exist"
fi   