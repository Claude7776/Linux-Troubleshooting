#!/bin/bash
USB_MOUNT="/mnt/usb"
SOURCE_DIR="/home/claude"
echo "🔌 Montage de la clé USB..."
sudo mount /dev/sdb1 $USB_MOUNT
echo "💾 Copie des fichiers utilisateurs vers la clé USB..."
cp -r $SOURCE_DIR/* $USB_MOUNT/
echo "✅ Sauvegarde terminée, démontage de la clé..."
sudo umount $USB_MOUNT
