#!/bin/bash

USERNAME="ansible"
PASSWORD="ansible"

# adding ansible
sudo useradd $USERNAME

# setting password for user: ansible
sudo echo -e "$PASSWORD\n$PASSWORD" | passwd $USERNAME 2>/dev/null

# setting bash shell as a default shell
sudo usermod --shell /bin/bash $USERNAME

# giving ansible user access to sudo
sudo echo "ansible ALL=(ALL)    NOPASSWD:ALL" >> /etc/sudoers
