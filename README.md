# vnc_desktop

This script installs a VNC remote desktop host on you Raspberry Pi. Display 1 is started at boot, so the address will be `<yourRPiIPaddress>:1`. It's not necessary to have the RPi log in automatically or to have the graphical desktop running. The script first updates and upgrades your RPi to make sure all programs are the newest versions, will then start the install of tightvncserver and finally write the configuration files.
This installation script is passive and thus does not response to errors.
The files vnc.sh and close_vnc.sh can be used to start and stop VNC and aren't used for automatically starting the server at boot.

On the Raspberry Pi site there's a [detailed article](https://www.raspberrypi.org/documentation/remote-access/vnc/) about using a remote desktop with the Raspberry Pi. This script in fact emulates the required actions.

The script can be run in a terminal emulator or in command line.

`vnc_install_rpi_v2.sh` is under development and may not work properly.

### Required:
* a RPi with internet connection and a keyboard
* a client computer connected to the RPi via network.

### Step 1
Download `vnc_install_rpi.sh` on your Raspberry Pi and save it in the `/home/pi` folder **OR** in terminal do `wget https://raw.githubusercontent.com/abaeyens/vnc_desktop/master/vnc_install_rpi.sh`.

### Step 2
Make the file executable: (open terminal and) do `sudo chmod 755 vnc_install_rpi.sh`.

### Step 3
Run the installation script: in terminal, do `sudo ./vnc_install_rpi.sh`

### Step 4
Sit back and relax, take a cup of coffee.

### Step 5
When asked, set a password on the RPi for the remote desktop.
Reboot the Raspberry Pi.
After little more than one minute the RPi should have booted and it should be possible to login to the remote desktop.


## FAQ
how to stop VNC server when already running?
* do `sudo /etc/init.d/vncboot` or do `sudo ./stopvnc.sh`.
can't find the RPi IP address
* it's visible in the wifi/connection utility
* or, if not using the desktop, it's showed in one of the last lines written during the boot.

authentication on client computer fails / I want a new password
* set another password on the Raspberry Pi with `vncpasswd` (in terminal) and reboot.
