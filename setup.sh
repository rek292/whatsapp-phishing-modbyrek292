#!/bin/bash
# setup ngrok
echo ""
sleep 0.5
echo "[+] Running setup ...."
sleep 0.5
echo ""

sudo wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip && sudo unzip ngrok-stable-linux-amd64.zip && sudo rm -rf ngrok-stable-linux-amd64.zip
sudo chmod +x ngrok
sudo apt-get install xterm
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install apache2 -y
sudo rm -rf setup.sh
clear
exit
bash Whatsapp.sh
