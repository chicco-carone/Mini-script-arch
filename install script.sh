#!/bin/bash
echo "Inserisci la password di sudo per mettere lo script nelle applicazioni"
chmod +x script
cp script ~/.local/bin/
sudo cp Mini\ Script.desktop /usr/share/applications/
if [ -f /usr/share/applications/Mini\ Script.desktop ]; then
  echo "Lo script è installato nel sistema puoi aprirlo dalle applicazioni"
else
  echo "Installazione fallita"
  exit 1
fi

