#!/data/data/com.termux/files/usr/bin/bash
RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')"
clear
echo $GREEN'''
    ____
   / __ \____ __________ ___  __  ___  __
  / /_/ / __ `/ ___/ __ `__ \/ / / / |/_/
 / ____/ /_/ / /  / / / / / / /_/ />  '''$ORANGE"<-------"$RED'''
/_/    \__,_/_/  /_/ /_/ /_/\__,_/_/|_|'''


echo " "

echo $ORANGE"     Automated parrot os installer for termux"
echo $CYAN "------------------------------------------------"
echo "    coded by Aymen ahmedin : @aymensecurity"    
echo "    https://www.youtube.com/@Aymensecurity"
echo $BLUE "------------------------------------------------"

sleep 2
clear
pkg update && pkg upgrade -y
pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Parrot/parrot.sh && bash parrot.sh


clear
mv gui.sh parrot-fs/root
rm -rf gui.sh
clear
echo " "
echo $GREEN[+]"type ( ./start-parrot.sh ) and run this script( bash gui.sh )"
