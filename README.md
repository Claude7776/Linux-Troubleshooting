# 🐧 Linux Troubleshooting Logbook

![OS](https://img.shields.io/badge/OS-Zorin%20%2F%20Mint-blue)
![Level](https://img.shields.io/badge/Level-Intermediate-green)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

> 💻 Ce dépôt est créé et maintenu depuis un terminal Termux sur Android, pour expérimenter et documenter mes compétences Linux et DevOps.

Il documente mes expériences pratiques en administration Linux sur des environnements **Zorin OS** et **Linux Mint**, avec un focus sur le dépannage système, le boot, **D-Bus**, **initramfs**,**internet en mode CLI** et la sauvegarde de données.

---

## 📑 Table des matières
1. [Contexte](#contexte)
2. [Problème rencontré](#problème-rencontré)
3. [Actions entreprises](#actions-entreprises)
4. [Commandes clés](#commandes-clés)
5. [Résultat](#résultat)
6. [Compétences développées](#compétences-développées)
7. [Bonnes pratiques](#bonnes-pratiques)
8. [Objectif du projet](#objectif-du-projet)

---

## 🔹 Contexte
- **Machine** : Lenovo T420  
- **OS** : Zorin OS 16 → Linux Mint  
- **Mode de travail** : TTY / shell (init 3)  

---

## 🔹 Problème rencontré
- Écran noir au boot  
- Service D-Bus bloqué  
- Initramfs corrompu  
- Sauvegarde nécessaire avant réinstallation  

---

## 🔹 Actions entreprises et commandes

### Vérification système de fichiers
```bash
sudo fsck -f /dev/sda1
sudo fsck -f /dev/sda2
```

### Gestion D-Bus et services
```bash
sudo systemctl status dbus
sudo systemctl restart dbus
sudo journalctl -xe | grep dbus
sudo systemctl status gdm
sudo systemctl restart gdm
```

### Regénération initramfs et GRUB
```bash
sudo update-initramfs -u -k all
sudo update-grub
sudo reboot
```

### Redémarrage interface graphique
```bash
sudo systemctl start gdm
sudo systemctl status gdm
```

### Sauvegarde fichiers utilisateur
```bash
sudo mount /dev/sdb1 /mnt/usb
cp -r /home/claude/* /mnt/usb/
sudo umount /mnt/usb
```

### Migration OS Zorin → Mint
```bash
sudo apt update && sudo apt upgrade -y
```

---

## Commandes utiles supplémentaires
| Commande | Description |
|----------|-------------|
| `whoami` | Vérifie l’utilisateur courant |
| `ssh-keygen` | Génère une clé SSH |
| `ssh-add ~/.ssh/id_ed25519` | Ajoute la clé à l’agent |
| `ssh -T git@github.com` | Test SSH GitHub |
| `git init` | Initialise un repo Git |
| `git add .` | Ajoute les fichiers pour commit |
| `git commit -m "msg"` | Commit |
| `git push` | Push vers GitHub |

---

## 🔹 Résultat
- Boot réparé ✅  
- D-Bus fonctionnel ✅  
- Scripts opérationnels ✅  
- Migration vers Mint réussie ✅  

---

## 🔹 Compétences développées
- Gestion boot Linux  
- Services D-Bus  
- Initramfs / GRUB  
- Sauvegarde via shell
- Connection WIFI mode CLI  
- Migration OS  

---

## 🔹 Bonnes pratiques
- Sauvegarde avant tout changement système  
- Vérification fs avant initramfs  
- Journalisation des commandes  

---

## 🔹 Objectif du projet
Créer un **référentiel de troubleshooting Linux** pour documenter, apprendre et montrer mes compétences DevOps / IT.
EOF

# 4️⃣ Initialisation Git et premier commit
cd Linux-Troubleshooting
git init
git add .
git commit -m "🌟 Premier commit – Arborescence complète, scripts et README enrichi"
echo "✅ Dépôt Git initialisé et premier commit effectué."
