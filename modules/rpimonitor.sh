#!/bin/sh
#rpimonitor
{ if (whiptail --yes-button "Skip" --no-button "Proceed" --yesno "Do you want to install rpimonitor?" 8 78) then
echo "User decline rpimonitor"
else
sudo wget http://goo.gl/vewCLL -O /etc/apt/sources.list.d/rpimonitor.list
sudo apt-get install -y rpimonitor
sudo /etc/init.d/rpimonitor update
sudo echo "rpimonitorfirewall=yes" | sudo tee --append /etc/piadvanced/install/firewall.conf
fi }
