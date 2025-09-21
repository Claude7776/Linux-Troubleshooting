#!/bin/bash
# Script pour tester la connexion réseau

HOST=${1:-8.8.8.8}
echo "[*] Ping vers $HOST ..."
ping -c 4 $HOST
