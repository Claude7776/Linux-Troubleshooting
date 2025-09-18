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

## Commandes principales
- sudo fsck -f /dev/sdaX
- sudo update-initramfs -u -k all
- sudo update-grub
- sudo systemctl status dbus
- sudo systemctl restart dbus
- cp -r /home/claude/* /mnt/usb/
- sudo apt update && sudo apt upgrade -y
