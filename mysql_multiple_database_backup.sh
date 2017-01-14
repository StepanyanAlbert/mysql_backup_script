#!/bin/bash

current_time=`date +"%Y_%m_%d_%H_%M_%S"`
file_path=/home/ # specify path for backup file 
password=""     #password
username="root" #username
declare -a MysqlDatabases=("test8" "test1" "test5") #database names
for database in "${MysqlDatabases[@]}"
do
    backup_file_name=$file_path$current_time$database".sql"  	
	mysqldump -u $username -p$password $database > $backup_file_name	
done	
