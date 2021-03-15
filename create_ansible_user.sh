#!/bin/bash

USERNAME="ansible"
PASSWORD="ansible"

# adding ansible
useradd $USERNAME

# setting password for user: ansible
echo -e "$PASSWORD\n$PASSWORD" | passwd $USERNAME 2>/dev/null

# setting bash shell as a default shell
usermod --shell /bin/bash $USERNAME

# giving ansible user access to sudo
echo "ansible ALL=(ALL)    NOPASSWD:ALL" >> /etc/sudoers
