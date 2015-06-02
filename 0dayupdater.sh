#! /bin/bash
# Script to use when i am lazy
# update my most used tools to the last version

# By TheZakMan  31/05/2015 15:02:00        
# Suggestions or comments can be PM'd to @TheZakMan

# [TODO:]
# . Re-do it all in pure python
# . Make a menu to select what to update
# . Add a option menu
# . Clean



#Colors
amarelo='\033[0;33m' # Yellow
azul='\033[1;34m' # Light Blue
verde='\033[1;32m' # Light Green

SC='\033[0m' # No Color

echo -e "\n${verde} [*] Welcome back you lazy-ass motherfucker!"

echo -e "${amarelo}"
echo "     ___      ___  _____  __  __  __        __     __         ";
echo "    / _ \____/ _ \/ _ \ \/ / / / / /__  ___/ /__ _/ /____ ____";
echo "   / // /___/ // / __ |\  / / /_/ / _ \/ _  / _ \`/ __/ -_) __/";
echo "   \___/   /____/_/ |_|/_/  \____/ .__/\_,_/\_,_/\__/\__/_/   ";
echo "                                /_/                           ";


echo -e "${SC}"
echo -e "                                      ╔═════════════════════╗"
echo -e "                                      | Lay back and enjoy! |";
echo -e "                                      ╚═════════════════════╝\n"
echo -e "         ____ ______ ______ ______________________    ";
echo -e "        ||fn|||ctrl||| alt|||                    ||   ";
echo -e "        ||__|||____|||____|||____________________||   ";
echo -e "        |/__\|/____\|/____\|/____________________\|   ";


echo ""; 

echo -e "${SC}          ${azul}TheZakMan ${SC}- ${azul}22, Feb 2015 ${SC}| ${azul}Version: ${amarelo}0.6b ";


echo -e "\n${verde}▓▓▓▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▓▓▓ "			
echo -e "▓▓▓▒▒ [*] Updating WPScan                           ░▒▒▓▓▓ "
echo -e "▓▓▓▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▓▓▓${SC} "

wpscan --update

echo -e "\n";
echo -e "\n${verde}▓▓▓▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▓▓▓ "			
echo -e "▓▓▓▒▒ [*] Updating SQLmap                           ░▒▒▓▓▓ "
echo -e "▓▓▓▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▓▓▓${SC} "

echo -e "\n";
echo "_______________________________________________________________"
cd /usr/share/sqlmap && ./sqlmap.py --update



echo -e "\n";
echo -e "\n${verde}▓▓▓▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▓▓▓ "			
echo -e "▓▓▓▒▒             [*] Updating MITMf                ░▒▒▓▓▓ "
echo -e "▓▓▓▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▓▓▓${SC} "

echo -e "_______________________________________________________________${azul}"
echo -e "___  ________ ________  ___ __ ";
echo -e "|  \/  |_   _|_   _|  \/  |/ _|";
echo -e "| .  . | | |   | | | .  . | |_ ";
echo -e "| |\/| | | |   | | | |\/| |  _|";
echo -e "| |  | |_| |_  | | | |  | | |  ";
echo -e "\_|  |_/\___/  \_/ \_|  |_/_|  ";
echo -e "                               ";
echo -e "                               ";
echo -e "    Framework for MITM attacks    ";
echo -e "                                  ${SC}";


cd /usr/share/mitmf/ && ./update.sh


# optional update for discover script ( in case you have installed :P )
#bash /opt/discover/update.sh

echo "_______________________________________________________________"
echo -e "${verde}_  _ ____ _   _    ____ _  _ _ ____ ____   /";
echo -e "|__| |___  \_/     |    |__| | |___ |___  / ";
echo -e "|  | |___   |      |___ |  | | |___ |    .  ";
echo -e "                                            ";

echo -e "${SC}---------------------------------${verde}"
read -p "What about Update Kali too? [Y/n] " resposta
#if test "$resposta" = "Y"

if [[ $resposta == "y" || $resposta == "Y" || $resposta == "s" || $resposta == "S" || $resposta == "yes" || $resposta == "Yes" || $resposta == "sim" || $resposta == "Sim" ]]

then 
     echo -e "${SC}---------------------------------${verde}"
     echo -e "${SC}[*] Updating the entire system.${amarelo}";
     echo "_______________________________________________________________"
     apt-get update -y && apt-get upgrade && apt-get -y dist-upgrade;
     apt-get clean # lets clean the shit!
else
     echo -e "${azul}Well, you are the boss!"	
fi
