#!/bin/bash
echo "✅ Regénération de l'initramfs pour tous les noyaux..."
sudo update-initramfs -u -k all
echo "✅ Mise à jour de GRUB..."
sudo update-grub
echo "🔄 Redémarrage du système..."
sudo reboot
