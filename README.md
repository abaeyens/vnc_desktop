# vnc_desktop

### Step 1
Download `vnc_install_rpi.sh` on your Raspberry Pi and save it in the `/home/pi` folder.

### Step 2
make the file executable: open terminal and do
`sudo chmode 755 vnc_install_rpi.sh`

### Step 3
run the file: in terminal, do
`sudo ./vnc_install_rpi.sh`

### Step 4
sit back and relax, take a cup of coffee

### Step 5
when asked, reboot the Raspberry Pi.


## FAQ
can't find the RPi IP address
* it's visible in the wifi/connection utility.

authentication on client computer fails
* set other password on Raspberry Pi with `vncpasswd` and reboot.
