#!/bin/bash
##############################
#Author: PRAVEEN KUMAR GAUTAM
#Date: 5 AUG 2024
#TIME: 19:41
#LOCATION: INDIA
##############################
#
#===================
#=LINUX TASK MASTER=
#===================
#
# 0. -Function to display the menu
display_menu() {
	clear
echo"==============================="
echo"=  LINUX TASK MASTER DISPLAY  ="
echo"==============================="
	echo""
	echo""
	echo "1. Display System Information"
	echo "2. Manage Services"
	echo "3. User Management"
	echo "4. View Logs"
	echo "5. Active Ports"
	echo "6. Search File"
	echo "7. Exit"
}
# 1. -Function to display system information
system_info() {
	clear
	echo "--------------------------------"
	echo "-  Display System Information  -"
	echo "--------------------------------"
	echo "1. System Name/Version"
	echo "2. User Name"
	echo "3. CPU Information"
	echo "4. Memory Information"
	echo "5. Disk Information"
	echo "6. Display IP Address"
	echo "7. List Running Process <CPU Load><Memory Load><Name>"
	echo "8. Show Open Ports"
	echo "9. Exit"
read -p "Please, select an option [ 1-9 ]:" choice
case $choice in
	1) uname -a ;;
	2) who ;;
	3) lscpu ;;
	4) free -h ;;
	5) df -h ;;
	6) ip a ;;
	7) ps aux | awk '{if($4>0) print $0}' |awk '{print NR": "$3," | "$4," | ",$11}' ;;
	8) sudo netstat -tulu ;;
	9) echo "Exiting"
		exit 0 ;;
	*) echo "Invalid Option, Please try again"
esac
read -p "Press [enter] to return to the menu"
}
# 2. -Function to manage services
manage_services() {
	clear
	echo "---------------------"
        echo "-  Manage Services  -"
        echo "---------------------"
	echo "1. List all service"
	echo "2. Start a service"
	echo "3. Stop a service"
	echo "4. Restart a service"
	echo "5. Check status of a service"
	echo "6. Exit"
read -p "Please select an option [ 1-6 ]:" choice
case $choice in
	1) systemctl list-units --type=service ;;
	2) read -p "Enter the name of the service to [Start]" service
		sudo systemctl start "$service" ;;
	3) read -p "Enter the name of the service to [Stop]" service
		sudo systemctl stop "$service" ;;
	4) read -p "Enter the name of the service to [Restart]" service
                sudo systemctl restart "$service" ;;
	5) read -p "Enter the name of the service to check [Status]" service
                sudo systemctl status "$service" ;;
	6) echo "Exiting"
                exit 0 ;;
	*) echo "Invalid option, try again"
	esac
	read -p "Press [Enter] to return to the menu"
}
# 3. -Function to manage user
manage_user() {
       clear
        echo "---------------------"
        echo "-  User Management  -"
        echo "---------------------"
	echo "1. List all User"
	echo "2. List all Groups"
	echo "3. Add a new User"
	echo "4. Delete a User"
	echo "5. Change user Password"
	echo "6. Exit"
read -p "Please select an option [ 1-5 ]:" choice
case $choice in
	1) cut -d: -f 1 /etc/passwd ;;
	2) cut -d: -f 1 /etc/group ;;
	3) read -p "Enter new user name to be [Add]" username
		sudo useradd -m "$username" ;;
	4) read -p "Enter user name to be [Delete]" username
		sudo userdl -r "$username" ;;
	5) read -p "Enter user name to change user [Password]" username
		sudo passwd "$username" ;;
	6) echo "Exiting"
                exit 0 ;;
	*) echo "Invalid option, try again"
	esac
	read -p "Press [Enter] to return to menu"
}
# 4. -Function to View logs
view_log() {
	clear
        echo "---------------"
        echo "-  View Logs  -"
        echo "---------------"
	echo "1. System log"
	echo "2. Authentication log"
	echo "3. Kernal log"
	echo "4. Exit"
	read -p "Please select an option [ 1-4 ]:" choice
case $choice in
	1) sudo less /var/log/syslog ;;
	2) sudo less /var/log/auth.log ;;
	3) sudo less /var/log/kern.log ;;
	4) echo "Exiting"
                exit 0 ;;
	*) echo "Invalid option, try again";;
esac
read -p "Press [Enter] to return to the menu"
}
# 5. -Function to listing ports
listing_ports() {
	clear
        echo "-------------------"
        echo "-  Listing Ports  -"
        echo "-------------------"
	echo "1. Active Ports"
	echo "2. Exit"
	read -p "Please select an option [ 1-2 ]:" choice
case $choice in
	1) ss -antpl ;;
	2) echo "Exiting"
                exit 0 ;;
	*) echo "Invalid option, try again" ;;
esac
read -p "Press [Enter] to return to the menu"
}
# 6. -Function to Manage File
manage_file() {
	clear
        echo "------------------"
        echo "-  Manage Files  -"
        echo "------------------"
	echo "1. Find file with no permissions"
	echo "2. Find recently modified files (last 7 days)"
	echo "3. Check for file with world-writable permissions"
	echo "4. List file in current directory"
	echo "5. Show disk usage of the current directory"
	echo "6. Exit"
	read -p "Please select an option [ 1-6 ]:" choice
case $choice in
	1) find -type f -perm 000 ;;
	2) find -type f -mtime -7 ;;
	3) find -type f -perm -002 ;;
	4) ls -lart ;;
	5) du -sh ;;
	6) echo "Exiting"
                exit 0 ;;
	*) echo "invalid option, try again";;
esac
read -p "Press [Enter] to return to the menu"
}
#DONE
while true; do
        display_menu
        read -p "Enter your option [ 1-6 ]:" option
        case $option in
                1) system_info ;;
                2) manage_services ;;
                3) manage_user ;;
                4) view_log ;;
                5) listing_ports ;;
                6) manage_file ;;
                7) exit 0 ;;
                *) echo "Invalid option, try again" ;;
        esac
done
