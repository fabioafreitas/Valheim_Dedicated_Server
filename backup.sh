#!/bin/bash
####################################
#
# Backup Valheim Saved game to a
# specified folder.
#
####################################

# What to backup.
backup_files="/root/.config/unity3d/IronGate/Valheim/worlds_local"
backup_file_name="valheim"

# Specify which directory to backup to.
# Make sure you have enough space to hold {n} days of backups.
dest="/home/fabio/valheim-backups"

# Create backup archive filename.
day=$(date +"%Y-%m-%d_%H-%M-%S")
archive_file="$day-$backup_file_name.tar.gz"

# Stop valheimserver Server
#systemctl stop valheimserver
sudo pkill screen

# Backup the files using tar.
tar zcvf $dest/$archive_file $backup_files

# Clear backups
/root/clear_backups.sh

# Start valheimserver Server
#systemctl start valheimserver
/home/fabio/steamcmd/start_server.sh