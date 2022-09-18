#!/bin/bash

# precisa rodar como sudo

cat ./backup.sh > /root/backup.sh
cat ./clear_backup.sh > /root/clear_backup.sh
chmod +x /root/backup.sh /root/clear_backup.sh

cat ./start_server.sh > /home/fabio/steamcmd/start_server.sh
chmod +x /home/fabio/steamcmd/start_server.sh
