#!/bin/bash
# Function to display the system user

display_user() {
	local user=$(whoami)
	echo -e "\nThe system user:           $user"
}

# Function to display system hotname

display_hostname() {
	local hostname=$(hostname)
	echo -e "\nThe system hostname:       $hostname"
}

# Date Function

display_date() {
	local date=$(date)
	echo -e "\nThe current date and time: $date"
}

#Uptime Function

display_uptime() {
	local uptime=$(uptime)
	echo -e "\nThe system up time:        $uptime"
}

#Current working directory Function

display_pwd() {
	local pwd=$(pwd)
	echo -e "\nThe current working dir:   $pwd"
}

# Disk space Function

display_disk_space() {
	local disk_space=$(df -h / | awk 'NR==2 {print $2 " total, " $4 " available"}')
	echo -e "\n The Total Disk space:     $disk_space"
}

# Functions call
display_user
display_hostname
display_date
display_uptime
display_pwd
display_disk_space
