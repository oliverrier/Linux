#!/bin/bash

date=_`date +%d-%b-%y_`

echo "Veuillez entrer le chemin du dossier à sauvegarder."
read path

echo "Veuillez entrer le nom que vous voulez donner à la sauvegarde."
read save_name

#day=(date +%a)

tar Cpzf "$save_name$date"".tar.gz" "$path"
