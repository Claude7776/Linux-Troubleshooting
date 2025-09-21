#!/bin/bash
# Script pour se connecter à un réseau Wi-Fi avec wpa_supplicant

IFACE="$1"
CONF="$2"

if [ -z "$IFACE" ] || [ -z "$CONF" ]; then
    echo "Usage: sudo $0 interface fichier.conf"
    exit 1
fi

echo "[*] Arrêt des services conflictuels..."
sudo killall wpa_supplicant dhclient 2>/dev/null

echo "[*] Lancement de wpa_supplicant..."
sudo wpa_supplicant -B -i "$IFACE" -c "$CONF"

echo "[*] Demande d'adresse IP..."
sudo dhclient "$IFACE"

echo "[*] Vérification de la connexion..."
ping -c 4 8.8.8.8
