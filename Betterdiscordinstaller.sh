#!/bin/bash
 echo "betterdiscord install script(doesn't work with flatpak or snap discord)"
 
 #Dependency install
 
    if command -v apt >/dev/null 2>&1 ; then
      if ! ( command -v apt >/dev/null 2>&1 && command -v dnf >/dev/null 2>&1 ) ; then
        
        echo"Debian/Ubuntu detected, installing dependencies..."
        echo "Please enter your password when asked"

        sudo apt update && sudo apt upgrade -y
        sudo apt-get update
        sudo apt-get install nodejs
        sudo apt-get install npm
        sudo npm install -g pnpm
        
        echo "Dependencies done"
      
      fi
    fi

    if command -v pacman >/dev/null 2>&1 ; then

    echo "Arch Linux detected, installing dependencies..."
    echo "Please enter your password when asked"

           sudo pacman --noconfirm -Syu git nodejs npm
           sudo npm install -g pnpm
          echo "Dependencies done"
    
    fi

 #Files and directory
 git clone https://github.com/BetterDiscord/BetterDiscord.git
 cd BetterDiscord

 #Building process
 pnpm install
 pnpm build

    
   echo "What version of discord do you have installed?: 
          1 - Discord
          2 - Discord Canary"

    read -r -p "$(echo "Choose your option: ")" installpath
    if [ "$installpath" = 1 ] || [ "$installpath" = 2 ] ; then  
    
      case "$installpath" in
        '1')
          pnpm inject
        ;;
        
        '2')
        
         pnpm inject canary
        ;;
