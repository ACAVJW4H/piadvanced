#!/bin/sh
## XRDP

## Dependencies Check
sudo bash /etc/piadvanced/dependencies/dep-whiptail.sh

## Variables
source /etc/piadvanced/install/firewall.conf
source /etc/piadvanced/install/variables.conf
source /etc/piadvanced/install/userchange.conf

{ if 
(whiptail --title "XRDP" --yes-button "Skip" --no-button "Proceed" --yesno "Do you want to install xrdp?" 10 80) 
then
echo "User Declined xrdp"
else
sudo apt-get install -y xrdp
sudo echo "xrdpfirewall=yes" | sudo tee --append /etc/piadvanced/install/firewall.conf
fi }
