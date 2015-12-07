	

    #!/bin/bash
    # script to install vnc stuff
     
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
     
    echo "Installation finished!"
    echo "Please reboot the computer"

