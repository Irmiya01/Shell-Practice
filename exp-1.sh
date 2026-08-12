#!/bin/bash

# Working directory
echo Current working Directory: $(pwd)
echo "-----------------------------------------------------------------------------------------------------------------------------"

# Directory and File Creation
mkdir -v LinuxLab  
cd LinuxLab
touch file1.txt file2.txt file3.txt file4.txt file5.txt

# Long Listing
ls -l
echo "-----------------------------------------------------------------------------------------------------------------------------"

# File Content
echo " Enter some content. press ctrl+d to Exit!"
cat > file1.txt 
cat file1
echo "-----------------------------------------------------------------------------------------------------------------------------"

# Head and Tail
man ls > file.txt # 
head -n 5 file.txt 
echo "-----------------------------------------------------------------------------------------------------------------------------"   
tail -n 5 file.txt
echo "-----------------------------------------------------------------------------------------------------------------------------"

# File statistics
wc -lwc file.txt                        # - Count lines, words, and characters in file.txt
echo "-----------------------------------------------------------------------------------------------------------------------------"

# Copy and Move
mkdir -v ../backup
cp -v file.txt ../backup/
mv -v file.txt file_backup.txt
echo "-----------------------------------------------------------------------------------------------------------------------------"

# File Search
ls -lR *.txt     # List all .txt files in the current directory
echo "-----------------------------------------------------------------------------------------------------------------------------"

# Sysytem Information
echo "System Information:"
date
whoami
hostname
uname -a
echo "-----------------------------------------------------------------------------------------------------------------------------"

# Permissions
echo "Permissions"
touch /mnt/c/Users/IRMIYA/OneDrive/Desktop/Shell_Scripting/per.txt
ls -l
chmod 600 file1.txt                    # Set read and write permissions for the owner only
ls -l


# echo Deleting files which were created in this script
# cd ..
# rm -r LinuxLab backup