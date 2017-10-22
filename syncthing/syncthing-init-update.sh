#!/bin/bash
# Script Name: AtoMiC Syncthing init.d update
# Author: TommyE123
# Publisher: http://www.htpcbeginner.com

if [[ -f /etc/init.d/$APPINITD ]]; then
    echo 'Updating init.d file'
    sudo sed -i "s@REPLCEME@$UNAME@g" /etc/init.d/syncthing || { echo -e $RED'Replacing daemon username in init failed.'$ENDCOLOR ; exit 1; }
fi
