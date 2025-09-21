# 💽 Installation d’un OS avec Ventoy

![Linux](https://img.shields.io/badge/platform-Linux-orange)
![USB](https://img.shields.io/badge/USB-Multiboot-red)

Ventoy est un outil permettant de créer une clé USB **multiboot**.  
Il suffit de copier les fichiers ISO (Linux, Windows, etc.) sur la clé, **sans avoir à la recréer à chaque fois**.

---

## J'ai Cree un script mais si vous voulez l'installation manuel
 
## 🔹 Installation de Ventoy

1. **Télécharger Ventoy** depuis la [page officielle](https://github.com/ventoy/Ventoy/releases).  
   Exemple via terminal :  
   ```bash
   wget https://github.com/ventoy/Ventoy/releases/download/v1.0.xx/ventoy-x.x.xx-linux.tar.gz
   
2. **Extraire l'archive**

```bash
tar -xvf ventoy-x.x.xx-linux.tar.gz
cd ventoy-x.x.xx
```
---

**⚠️ Attention : cette opération formate entièrement la clé USB.
Sauvegarde tes données avant l’installation.

## 🔹 Copier les ISO

**Une fois Ventoy installé, une partition Ventoy apparaît.
Il suffit d’y copier directement les fichiers ISO :

```bash

cp ~/Téléchargements/linuxmint.iso /media/$USER/Ventoy/
cp ~/Téléchargements/ubuntu.iso /media/$USER/Ventoy/
```
## 🔹 Booter sur Ventoy

1. **Redémarrer le PC et booter sur la clé USB.**

2. **Ventoy affiche un menu listant toutes les ISO présentes.**

3. **Sélectionner l’ISO souhaitée → installation immédiate de l’OS.**

## 🔹 Exemple pratique

**✔️ Installation réussie de Linux Mint via Ventoy → OS fonctionnel et prêt à l’emploi.**

## ✅ Avantages de Ventoy super Pratique pour du Multiboot

1. **Support multiboot (plusieurs ISO sur une seule clé)**

2. **Plus besoin de reformater la clé à chaque fois**

3. **Compatible Linux, Windows, BSD, etc.**
