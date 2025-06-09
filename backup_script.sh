#!/bin/bash

# Defining the backup directory
backup_dir=~/website_backups

# Create the backup directory 
mkdir -p $backup_dir

# Create a timestamp to make each backup unique
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")

# Create a compressed archive of the website files
tar -czvf $backup_dir/backup_$timestamp.tar.gz /var/www/html/
s
echo "Backup complete: $backup_dir/backup_$timestamp.tar.gz"
