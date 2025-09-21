#!/bin/bash

#Télécharger Ventoy (archive .tar.gz)
wget https://sourceforge.net/projects/ventoy/files/v1.1.07/ventoy-1.1.07-linux.tar.gz/download

#Extraire le dossier de type .tar

tar -xvf ventoy-1.1.07
cd ventoy-1.1.07

#installer Ventoy sur la clé (Attention :remplace /dev/sdX par le chemin de votre clé USB)

./Ventoy2Disk.sh -i /dev/sdX

##### WARNING cette comande va formater enièrement votre clé USB ########### 
