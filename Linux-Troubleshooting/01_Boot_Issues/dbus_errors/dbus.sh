#!/bin/bash
echo "🔍 Vérification de l'état du service D-Bus..."
sudo systemctl status dbus
echo "🔄 Redémarrage du service D-Bus..."
sudo systemctl restart dbus
echo "📜 Vérification des logs D-Bus récents..."
sudo journalctl -xe | grep dbus
