#!/bin/bash

# Vérifie si le dossier existe
PROJECT_DIR="wifi-wpasupplicant"
if [ ! -d "$PROJECT_DIR" ]; then
  echo "Erreur : le dossier $PROJECT_DIR n'existe pas."
  exit 1
fi

cd "$PROJECT_DIR" || exit

echo "[*] Création des scripts et du fichier de configuration..."

# 1. wifi_connect.sh
cat <<'EOF' > wifi_connect.sh
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
EOF
chmod +x wifi_connect.sh

# 2. wpa_supplicant.conf
cat <<'EOF' > wpa_supplicant.conf
ctrl_interface=/var/run/wpa_supplicant
update_config=1
country=FR

network={
    ssid="NomDuWiFi"
    psk="MotDePasseWiFi"
}
EOF

# 3. ping_test.sh
cat <<'EOF' > ping_test.sh
#!/bin/bash
# Script pour tester la connexion réseau

HOST=${1:-8.8.8.8}
echo "[*] Ping vers $HOST ..."
ping -c 4 $HOST
EOF
chmod +x ping_test.sh

# 4. dns_check.sh
cat <<'EOF' > dns_check.sh
#!/bin/bash
# Script pour vérifier la résolution DNS

HOST=${1:-google.com}
echo "[*] Vérification DNS pour $HOST ..."
nslookup $HOST
EOF
chmod +x dns_check.sh

echo "[+] Scripts et fichier de configuration créés avec succès dans $PROJECT_DIR !"

