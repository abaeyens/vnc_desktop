#!/bin/bash
# script to install vnc stuff

USER=pi
HOME=/home/pi

export USER HOME

case "$1" in
 full)
  echo "Full"
  ;;

 on)
  echo "On"
  ;;
 off)
  echo "Off"
  ;;
 *)
  echo "Usage: ./vnc_install_rpi_v2 {full|on|off}"
  exit 1
  ;;
esac
