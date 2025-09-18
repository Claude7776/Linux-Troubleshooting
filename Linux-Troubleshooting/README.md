# 🐧 Linux Troubleshooting Logbook

Ce dépôt documente mes expériences pratiques en administration Linux sur Zorin OS et Linux Mint.

## Arborescence
Linux-Troubleshooting/
├─ 01_Boot_Issues/
│   ├─ initramfs_update/
│   └─ dbus_errors/
├─ 02_Backup/
│   └─ usb_backup/
└─ 03_OS_Transition/
    └─ Zorin_to_Mint/

    # Linux Troubleshooting

Ce dépôt contient une collection de scripts et de ressources pour diagnostiquer et résoudre des problèmes courants sous Linux.  

## 🚀 Changements récents
- **Renommage et organisation des scripts** pour une meilleure clarté :
  - `dbus.sh` ➝ `01_Boot_Issues/dbus_errors/dbus.sh` (réparer/redémarrer le service D-Bus)
  - `update_initramfs.sh` ➝ `01_Boot_Issues/initramfs_update/update_initramfs.sh` (régénérer initramfs en cas de problème de démarrage)
  - `backup.sh` ➝ `02_Backup/usb_backup/backup.sh` (sauvegarde automatique vers une clé USB)
  - `updateOS.sh` ➝ `03_OS_Transition/Zorin_to_Mint/updateOS.sh` (migration de ZorinOS vers Linux Mint)

## Commandes principales
```bash
- sudo fsck -f /dev/sdaX
- sudo update-initramfs -u -k all
- sudo update-grub
- sudo systemctl status dbus
- sudo systemctl restart dbus
- cp -r /home/claude/* /mnt/usb/
- sudo apt update && sudo apt upgrade -y
```
