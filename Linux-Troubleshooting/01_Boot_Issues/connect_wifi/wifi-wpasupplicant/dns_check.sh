#!/bin/bash
# Script pour vérifier la résolution DNS

HOST=${1:-google.com}
echo "[*] Vérification DNS pour $HOST ..."
nslookup $HOST
