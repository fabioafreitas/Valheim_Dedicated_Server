#!/bin/bash
####################################
#
# Clean up Valheim saved game to a
# specified folder.
#
####################################

# -mtime +30 means any file older than 30 days
find /home/fabio/valheim-backups -type f -mtime +30 -exec rm -f {} \;