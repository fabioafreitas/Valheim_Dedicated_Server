# Valheim_Dedicated_Server

Backup do meu servidor dedicado de valheim. execute **copy_scripts_to_correct_locations.sh** ao baixar o repositorio no servidor, para posicionar os scripts nos paths corretos.

## Linux OS

Ubuntu 18.04 LTS

## Requisitos

* wget
* screen
* htop
* git

## Firewall

udp: 2456-2458

## Configurar Backup

Cole os scripts **backup.sh** e **clear_backup.sh** em **/root**

Adicione o job abaixo no crontab para o servidor gerar backups automáticos. Neste exemplo ele gerará diariamente um backup às 3 da manhã, no fuso horário configurado no mesmo.
```
# crontab -e

0 3 * * * /root/backup.sh
```

## Instalação

Instalar requisitos

```
apt update
apt upgrade
apt install htop screen wget git -y
```

Instalar Steamcmd
```
dpkg --add-architecture i386
apt update
apt install steamcmd -y
```

Instalar Valheim Dedicated Server
```
steamcmd
login anonymous
force_install_dir /home/fabio/steamcmd
app_update 896660
exit
```

## Restaurar Backup

Desligar servidor
```
sudo pkill screen
```

Remover mundos existentes
```
rm -rf /root/.config/unity3d/IronGate/Valheim/worlds/*
```

Resturar backup
```
tar -xvf /home/fabio/valheim-backups/2021-02-18_03-00-01-valheim.tar.gz -C /
```

Reiniciar servidor
```
/home/fabio/steamcmd/start_server.sh
```
