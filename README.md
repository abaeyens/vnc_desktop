# vnc_desktop

This script installs a VNC remote desktop host on you Raspberry Pi. Display 1 is started at boot, so the address will be `<yourRPiIPaddress>:1`. It's not necessary to have the RPi log in automatically or to have the graphical desktop running. The script first updates and upgrades your RPi to make sure all programs are the newest versions and will then start the install of tightvncserver and at last write the configuration files.
This installation script is passive and thus does not response to errors.
The files vnc.sh and close_vnc.sh can be used to start and stop VNC.

The script can be run in a terminal emulator or in command line.

### Required:
* a RPi with internet connection and a keyboard
* a client computer

### Step 1
Download `vnc_install_rpi.sh` on your Raspberry Pi and save it in the `/home/pi` folder **OR** in terminal do `wget https://raw.githubusercontent.com/abaeyens/vnc_desktop/master/vnc_install_rpi.sh`.

### Step 2
Make the file executable: (open terminal and) do `sudo chmod 755 vnc_install_rpi.sh`.

### Step 3
Run the installation script: in terminal, do `sudo ./vnc_install_rpi.sh`

### Step 4
Sit back and relax, take a cup of coffee.

### Step 5
When asked, reboot the Raspberry Pi.


## FAQ
can't find the RPi IP address
* it's visible in the wifi/connection utility.

authentication on client computer fails
* set other password on Raspberry Pi with `vncpasswd` and reboot.
