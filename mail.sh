#!/bin/bash
# Author : SAEP
apt install cowsay
clear
kirmizi="\e[31m"
yesil="\e[32m"
sari="\e[33m"
mor="\e[34m"
mavi="\e[36m"
beyaz="\033[1;37m"
reset="\e[0m"
author="\e[33mAuthor : \e[31mFurkan\e[32m  Kerem \e[31mV1.0\e[0m"

printf "\n"
printf "\n"
cowsay -f ghostbusters Mail Scan
printf "\n"
printf "\n"
printf "$author \n"
read -p "$(echo -e $kirmizi[$yesil+$kirmizi]$sari" DOMAIN address : "$kirmizi)" domain
printf $"\n --->$sari Starting attack on $domain address\n"
printf "\n"
sleep 3
msfconsole -q -x "use auxiliary/gather/search_email_collector; set DOMAIN $domain; exploit"
