#!/bin/bash
# backup data every Monday 01:00
backup_path=/var/backup_data
source_path=/var/www/html/data/
dir_name=$(date +%Y-%m-%d)
if [ ! -d $backup_path ]; then
    echo "backup_path not exist"
    exit
fi
if [ -d $backup_path/$dir_name ]; then
    echo "already backup"
else
    mkdir $backup_path/$dir_name
    cp -r $source_path $backup_path/$dir_name
fi
