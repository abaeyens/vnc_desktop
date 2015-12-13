#!/bin/bash
# script to install vnc stuff

# V1.5 - sunday 13/12/2015
# Written by Arne Baeyens, contains commands from the remote desktop installation tutorial on the raspberrypi.org website.
# Use this code at your own risk. I am not responsible for any damage.
# for help, please visit https://github.com/abaeyens/vnc_desktop.

USER=pi
HOME=/home/pi

export USER HOME

case "$1" in
 full)
  echo "Full installation"
  echo "Updating programs on your Raspberry Pi..."
  sudo apt-get -y update && sudo apt-get -y upgrade
  
  echo "Starting install of remote desktop server..."
  echo "Install of package tightvncserver"
  sudo apt-get -y install tightvncserver
  echo "Package tightvncserver automatically installed."
  
  echo "Cleaning up old files..."
  rm vncboot
  rm vnc.sh
  rm close_vnc.sh
  
  echo "Downloading files..."
  wget https://raw.githubusercontent.com/abaeyens/vnc_desktop/master/vncboot
  wget https://raw.githubusercontent.com/abaeyens/vnc_desktop/master/vnc.sh
  wget https://raw.githubusercontent.com/abaeyens/vnc_desktop/master/close_vnc.sh
  
  echo "Making files vnc.sh and close_vnc.sh executable..."
  sudo chmod +x vnc.sh
  sudo chmod +x close_vnc.sh
  
  echo "Copying file vncboot..."
  cd /etc/init.d
  sudo cp /home/pi/vncboot ./
  
  echo "Making file vncboot executable..."
  sudo chmod 755 vncboot
  
  echo "update-rc.d settings..."
  #sudo update-rc.d /etc/init.d/vncboot defaults
  sudo update-rc.d vncboot defaults
  
  echo "Configuring password settings for remote desktop..."
  echo "Follow instructions."
  sudo vncpasswd
  
  echo "Installation finished!"
  echo "Please reboot your Raspberry Pi to activate the desktop."
  ;;
 off)
  echo "Disabling startup at boot."
  cd /etc/init.d
  sudo rm vncboot
  echo "Finished"
  ;;
 on)
  echo "Enabling startup at boot."
  echo "Copying file vncboot..."
  cd /etc/init.d
  sudo cp /home/pi/vncboot ./
  
  echo "Making file vncboot executable..."
  sudo chmod 755 vncboot
  
  echo "update-rc.d settings..."
  #sudo update-rc.d /etc/init.d/vncboot defaults
  sudo update-rc.d vncboot defaults
  echo "Finished"
  ;;
 *)
  echo "Usage: ./vnc_install_rpi_v2 {full|on|off}"
  echo " 'full' => Full installation and enable startup at boot."
  echo " 'on' => Enable startup at boot."
  echo " 'off' => Disable startup at boot."
  echo "For more help, please visit https://github.com/abaeyens/vnc_desktop."
  exit 1
  ;;
esac

