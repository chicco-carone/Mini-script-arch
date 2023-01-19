#!/bin/bash

echo "Inserisci la password di sudo per rimuovere lo script dalle applicazioni"
sudo rm -r ~/.local/bin/script
sudo rm /usr/share/applications/Mini\ Script.desktop
echo "Lo script è stato rimosso dalle applicazioni"
exit 0
