#!/bin/bash
# setup ngrok
sleep 0.5
echo "[+] Running setup ...."
sleep 0.5

sudo wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip && sudo unzip ngrok-stable-linux-amd64.zip && sudo rm -rf ngrok-stable-linux-amd64.zip
sudo chmod +x ngrok
sudo rm -rf setup.sh
clear
exit
bash Whatsapp.sh
