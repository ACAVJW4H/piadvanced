#!/bin/sh
## moboticz

## Variables
source /etc/piadvanced/install/firewall.conf
source /etc/piadvanced/install/variables.conf
source /etc/piadvanced/install/userchange.conf

{ if (whiptail --yes-button "Skip" --no-button "Proceed" --yesno "Do you want to install moboticz?" 8 78) then



echo "not installing stuff"

else

echo "installing stuff"



fi }
