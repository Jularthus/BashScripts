#!/bin/bash

notify-send "Début de la synchronisation."
onedrive > ./logsOneDrive.txt


if [ -s ./logsOneDrive.txt ]
then
     notify-send "OneDrive a bien été synchronisé. /home/OneDrive"
else
     echo "Problème de synchronisation, merci de vérifier votre accès à Internet." > ./logsOneDrive.txt
     notify-send "La commande a rencontré un problème."
fi

echo -e '\n\nCommand made with ❤️ by Jularthus.' >> ./logsOneDrive.txt
nautilus -q
xdg-open ./logsOneDrive.txt
xdg-open ./OneDrive