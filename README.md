# 🐧 Linux Troubleshooting Logbook

![OS](https://img.shields.io/badge/OS-Zorin%20%2F%20Mint-blue)
![Level](https://img.shields.io/badge/Level-Intermediate-green)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

Ce dépôt documente mes expériences pratiques en administration Linux sur des environnements **Zorin OS** et **Linux Mint**, avec un focus sur le dépannage système, le boot, **D-Bus**, **initramfs**, et la sauvegarde de données.

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
- **OS** : Zorin OS 16 (Ubuntu 20.04) → migré vers Linux Mint  
- **Mode de travail** : TTY / shell (init 3)  
- **Objectif** : Diagnostiquer et résoudre un problème de boot, sauvegarder les données et stabiliser l’OS.

---

## 🔹 Problème rencontré
- Écran noir au boot, interface graphique inaccessible  
- Service D-Bus non disponible  
- Initramfs potentiellement corrompu  
- Nécessité de sauvegarder les fichiers avant toute réinstallation  

---

## 🔹 Actions entreprises
1. Vérification du système de fichiers :  
```bash
sudo fsck -f /dev/sda1
