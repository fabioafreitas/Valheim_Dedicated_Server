#!/bin/bash

# precisa rodar como sudo

cp backup.sh /root/
cp clear_backup.sh /root/
chmod +x /root/backup.sh /root/clear_backup.sh

rm /home/fabio/steamcmd/start_server.sh
cp /home/fabio/steamcmd/start_server.sh
chmod +x /home/fabio/steamcmd/start_server.sh