#!/bin/bash

# Example of server configuration commands
sudo apt-get update
sudo apt-get upgrade -y

# Add SSH key configuration
echo "Adding SSH keys..."
mkdir -p ~/.ssh
chmod 700 ~/.ssh
echo "your-public-ssh-key" >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

# Any other configuration commands you need
