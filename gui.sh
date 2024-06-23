#!/bin/bash
## ANSI colors (FG & BG)
RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')"
clear
sleep 1
echo -n $CYAN "
|||||||||||||||||||||||||||||||||||||||||||||||||
$GREEN|                                               |
$MADENITA|               AYMENSECURITY                   |
$RED|            PARROT OS  in TERMUX               |
$ORANGE|                                               |
$BLUE|                                               |
$MAGENTA|             https://tiktok.com/@aymensecurity |
$CYAN|||||||||||||||||||||||||||||||||||||||||||||||||
"
echo $MAGENTA"================================================="
echo -n $ORANGE  "
           $BLUE MATE    1 👈recommended
       $GREEN     XFCE    2
            LXDE    3
$BLUE[+]$GREEN choose your favorite desktop :  " 
read answer
if [ $answer = 1 ]; then
      clear
      echo $CYAN "[+]it takes some times wait "
      sleep 2
      echo $GREEN "[+] Checking Dependencies....."
      sleep 2
      apt update && apt upgrade -y
      echo "deb https://deb.parrot.sh/parrot lory main contrib non-free non-free-firmware
deb https://deb.parrot.sh/parrot lory-security main contrib non-free non-free-firmware
deb https://deb.parrot.sh/parrot lory-backports main contrib non-free non-free-firmware
#deb-src https://deb.parrot.sh/parrot lory main contrib non-free non-free-firmware
#deb-src https://deb.parrot.sh/parrot lory-security main contrib non-free non-free-firmware
#deb-src https://deb.parrot.sh/parrot lory-backports main contrib non-free non-free-firmware


" > /etc/apt/sources.list
      apt update && apt full-upgrade -y
      apt install figlet dbus-x11 tige* tigervnc-standalone-server  parrot-desktop-mate parrot-menu chromium vlc parole inkscape gimp -y
      echo "vncserver -xstartup /usr/bin/mate-session" > start-gui
      chmod +x start-gui
      mv start-gui /usr/bin
      echo "vncserver -kill :1 && vncserver -kill :2" > stop-gui
      chmod +x stop-gui
      mv stop-gui /usr/bin
      clear
      sleep 2
      echo $GREEN "your desktop is sucssfully installed "
      sleep 2
      echo " "
            echo $CYAN[+] $BLUE "to start desktop type ( start-gui )"
      echo " " 
      echo $CYAN[+] $BLUE"to stop desktop type ( stop-gui )"
      echo " "
      echo $CYAN[+] $BLUE"to start parrot os cli type ( ./start-parrot.sh )"
elif [ $answer = 2 ]; then
     clear
     echo $CYAN "[+]it takes some times wait "
     sleep 2
     echo $GREEN "[+] Checking Dependencies....."
     sleep 2
     apt update && apt upgrade -y
     echo "deb https://deb.parrot.sh/parrot lory main contrib non-free non-free-firmware
deb https://deb.parrot.sh/parrot lory-security main contrib non-free non-free-firmware
deb https://deb.parrot.sh/parrot lory-backports main contrib non-free non-free-firmware
#deb-src https://deb.parrot.sh/parrot lory main contrib non-free non-free-firmware
#deb-src https://deb.parrot.sh/parrot lory-security main contrib non-free non-free-firmware
#deb-src https://deb.parrot.sh/parrot lory-backports main contrib non-free non-free-firmware
" > /etc/apt/sources.list
     apt update && apt full-upgrade -y
     apt install tigervnc-standalone-server tiger* xfce* parrot-wallpapers inkscape parole figlet dbus-x11 parrot-menu chromium vlc gimp -y
     echo "vncserver -xstartup /usr/bin/xfce4-session" > start-gui
     chmod +x start-gui
     echo "vncserver -kill :1 && vncserver -kill :2" > stop-gui
     chmod +x stop-gui
     mv start-gui /usr/bin
     mv stop-gui /usr/bin
     clear
     sleep 2
     echo $GREEN "your desktop is sucssfully installed "
     sleep 2
     echo " "
     echo $CYAN[+] $BLUE"to start desktop type ( start-gui )"
     echo " "
     echo $CYAN[+] $BLUE"to stop desktop type ( stop-gui )"
     echo " "
     echo $CYAN[+] $BLUE"to start parrot os cli type ( ./start-parrot.sh )"
elif [ $answer = 3 ]; then
     clear
     echo $CYAN "[+]it takes some times wait "
     sleep 2
     echo $GREEN "[+] Checking Dependencies....."
     sleep 2
     apt update && apt upgrade -y
     echo "deb https://deb.parrot.sh/parrot lory main contrib non-free non-free-firmware
deb https://deb.parrot.sh/parrot lory-security main contrib non-free non-free-firmware
deb https://deb.parrot.sh/parrot lory-backports main contrib non-free non-free-firmware
#deb-src https://deb.parrot.sh/parrot lory main contrib non-free non-free-firmware
#deb-src https://deb.parrot.sh/parrot lory-security main contrib non-free non-free-firmware
#deb-src https://deb.parrot.sh/parrot lory-backports main contrib non-free non-free-firmware
" > /etc/apt/sources.list
     apt update && apt full-upgrade -y
     apt install lxde* tigervnc-standalone-server parrot-menu parrot-wallpapers chromium parole kali-themes tiger* dbus-x11 figlet firefox-esr gimp vlc  -y
     echo "vncserver -xstartup /usr/bin/startlxde" > start-gui
     chmod +x start-gui
     mv start-gui /usr/bin
     echo "vncserver -kill :1 && vncserver -kill :2" > stop-gui
     chmod +x stop-gui
     mv stop-gui /usr/bin
     clear
     sleep 2
     echo $GREEN "your desktop is sucssfully installed "
     sleep 2
     echo " "
     echo $CYAN[+] $BLUE"to start desktop type ( start-gui )"
     echo " "
     echo $CYAN[+] $BLUE"to stop desktop type ( stop-gui )"
     echo " "
     echo $CYAN[+] $BLUE"to start parrot os cli type ( ./start-parrot.sh )"
else
   echo " "
   echo $RED [!] "you are not correct run script agian !"
   exit 1
fi
