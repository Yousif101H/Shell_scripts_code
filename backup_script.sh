#!/bin/bash
#first arg that hold the source directory
source_directory=$1
#second arg that hold the backup directory
backup_directory=$2
# A conditional if that check if the user is input the first and second arguments when executing the script
if [ -z "$source_directory" ] || [ -z "$backup_directory" ];
then
	echo  "Usage: $0 <source_directory> <backup_directory>"
	exit 1
fi
#A conditional if that check if the source directory is not exist
if [ ! -d "$source_directory" ];
then
	echo "Error: source directory '$source_directory' does not exist"
	exit 1
fi
#generating timestamp to use when naming the backup archived file
timestamp=$(date +%Y%m%d%H%M%S)
#make a directory to ensure 
mkdir -p ${backup_directory} 
tar -czf "${backup_directory}/backup_${timestamp}.tar.gz" -C "${source_directory}" .
#you can check if the tar command was successful
if [ $? -eq 0 ];
then
    echo "Backup created successfully: ${backup_directory}/backup_${timestamp}.tar.gz"
else
    echo "Backup creation failed"
fi