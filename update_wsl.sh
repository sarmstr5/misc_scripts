#!/usr/bin/bash

# this script updated WSL without updating windows to fast ring
# 14.04 WSL does not have screen install and causes errors
# NOTE - procps and strace are on hold
# sudo -S, --stdinWrite the prompt to the standard error and read the password from the standard input instead of using the terminal device. The password must be followed by a newline character.

# update
lsb_release -a
sudo -S apt-get remove screen
sudo -S apt-mark hold procps strace
sudo -S env RELEASE_UPGRADER_NO_SCREEN=1 do-release-upgrade

# after update, clean up
sudo -S rm /etc/apt/apt.conf.d/50unattended-upgrades.ucf-old # this wasnt necessary for me
sudo -S dpkg --configure -a
sudo -S apt-get update
sudo -S apt-get upgrade
sudo -S apt-get dist-upgrade
sudo -S apt-get autoremove
lsb_release -a
