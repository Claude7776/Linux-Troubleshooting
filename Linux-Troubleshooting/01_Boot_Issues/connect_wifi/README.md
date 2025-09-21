# 📡 Connexion Wi-Fi via WPA Supplicant (100% Terminal)

Ce projet montre comment se connecter à un réseau **Wi-Fi** uniquement en terminal avec `wpa_supplicant`.  
C’est utile pour le **troubleshooting**, les serveurs sans GUI ou un apprentissage pratique en administration réseau.

---

## 🚀 Utilisation

1. Crée un fichier `wpa_supplicant.conf` avec ton SSID et mot de passe :
   ```conf
   network={
       ssid="NomDuWiFi"
       psk="MotDePasseWiFi"
   }

