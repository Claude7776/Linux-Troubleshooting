# 🐧 Linux Troubleshooting Logbook

Ce dépôt documente mes expériences pratiques en administration Linux sur Zorin OS et Linux Mint.

## Arborescence
Linux-Troubleshooting/
├─ 01_Boot_Issues/
│   ├─ initramfs_update/
│   └─ dbus_errors/
|   └─ connect_wifi/
├─ 02_Backup/
│   └─ usb_backup/
└─ 03_OS_Transition/
    └─ Zorin_to_Mint/
    └─ ventoy_install_CLI/

    # Linux Troubleshooting

Ce dépôt contient une collection de scripts et de ressources pour diagnostiquer et résoudre des problèmes courants sous Linux.  

## 🚀 Changements récents
- **Ajout et organisation des scripts** pour une meilleure clarté :
  - `dbus.sh` ➝ `01_Boot_Issues/dbus_errors/dbus.sh` (réparer/redémarrer le service D-Bus)
  - `update_initramfs.sh` ➝ `01_Boot_Issues/initramfs_update/update_initramfs.sh` (régénérer initramfs en cas de problème de démarrage)
  - `dns_check.sh ping_test.sh wifi_connect.sh wpa_supplicant.conf` ➝ `/01_Boot_Issues/connect_wifi/wifi-wpasupplicant`(Creation d'une connection sans fils sans GUI)
  - `backup.sh` ➝ `02_Backup/usb_backup/backup.sh` (sauvegarde automatique vers une clé USB)
  - `updateOS.sh` ➝ `03_OS_Transition/Zorin_to_Mint/updateOS.sh` (migration de ZorinOS vers Linux Mint)
  - `ventoyOS.sh` ➝ `03_OS_Transition/Zorin_to_Mint/ventoy_install_CLI` (Creation d'une clé USB live en CLI)

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
