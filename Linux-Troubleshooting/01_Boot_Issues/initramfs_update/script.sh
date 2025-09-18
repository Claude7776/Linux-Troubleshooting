#!/bin/bash
# Script pour regénérer initramfs et mettre à jour GRUB
# A utiliser en cas de boot problématique

echo "✅ Regénération de l'initramfs pour tous les noyaux..."
sudo update-initramfs -u -k all

echo "✅ Mise à jour de GRUB..."
sudo update-grub

echo "Good Luck"
echo "🔄 Redémarrage du système..."
sudo reboot
###GoodLuck###
