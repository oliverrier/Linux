#!/bin/bash

echo "Entrer le lien de la musique youtube à télécharger:"
read link

cd ~/Music

youtube-dl -x $link 2> /dev/null

echo "Votre musique a été téléchargée dans votre dossier ~/Music."

cd ~
