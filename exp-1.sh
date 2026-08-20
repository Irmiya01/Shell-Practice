#!/bin/bash

# Working directory
echo Current working Directory: $(pwd)
echo "-----------------------------------------------------------------------------------------------------------------------------"

# Directory and File Creation
mkdir -v LinuxLab  
cd LinuxLab
touch file1.txt file2.txt file3.txt file4.txt file5.txt
cd ..

# Long Listing
ls -l
echo "-----------------------------------------------------------------------------------------------------------------------------"

# File Content
echo " Enter some content. press ctrl+d to Exit!"
cat > LinuxLab/file1.txt 
echo You Entered:
cat LinuxLab/file1.txt
echo "-----------------------------------------------------------------------------------------------------------------------------"

# Head and Tail
head -n 2 LinuxLab/file1.txt 
echo "-----------------------------------------------------------------------------------------------------------------------------"   
tail -n 2 LinuxLab/file1.txt 
echo "-----------------------------------------------------------------------------------------------------------------------------"

# File statistics
wc -lwc LinuxLab/file1.txt                        # - Count lines, words, and characters in file.txt
echo "-----------------------------------------------------------------------------------------------------------------------------"

# Copy and Move
mkdir  backup
cp -v LinuxLab/file1.txt backup/
mv -v backup/file1.txt backup/file_backup.txt
echo "-----------------------------------------------------------------------------------------------------------------------------"

# File Search
ls -lR LinuxLab/*.txt     
echo "-----------------------------------------------------------------------------------------------------------------------------"

# Sysytem Information
echo "System Information:"
echo "Date:$(date)"
echo "USer:$(whoami)"
echo "Host:$(hostname)"
echo "Kernel:$(uname)" 
echo "-----------------------------------------------------------------------------------------------------------------------------"

# Permissions
echo "Permissions"
cd ~
ls -l LinuxLab/test1.txt
chmod 600 LinuxLab/test.txt                    
ls -l LinuxLab/test1.txt
cd /mnt/c/Users/IRMIYA/OneDrive/Desktop/Shell_Scripting


# echo Deleting files which were created in this script
# rm -r LinuxLab backup