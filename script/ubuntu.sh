#!/bin/sh

# create missing group
dscl . -create /Groups/ubuntu
dscl . -create /Groups/ubuntu PrimaryGroupID 1000
id -a ubuntu

# Set computer/hostname
scutil --set ComputerName ubuntu
scutil --set HostName ubuntu.dev

# Packer passes boolean user variables through as '1', but this might change in
# the future, so also check for 'true'.
echo "Installing vagrant keys for $SSH_USERNAME user"
mkdir "/Users/$SSH_USERNAME/.ssh"
chmod 700 "/Users/$SSH_USERNAME/.ssh"
curl -L 'https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub' > "/Users/$SSH_USERNAME/.ssh/authorized_keys"
chmod 600 "/Users/$SSH_USERNAME/.ssh/authorized_keys"
chown -R "$SSH_USERNAME" "/Users/$SSH_USERNAME/.ssh"
