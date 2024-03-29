#!/bin/bash
# Author: Md Saif Zaman
# Purpose: Docker Onboarding Script
# Date: Jan 24, 2024

# The following command uninstalls all conflicting packages.
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done

# Uninstall the Docker Engine, CLI, containerd, and Docker Compose packages.
sudo apt-get purge docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-ce-rootless-extras

# Images, containers, volumes, or custom configuration files on your host aren't automatically removed. 
# To delete all images, containers, and volumes we run the following command.
sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# To install the latest version, run:
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Start Docker on Linux Starting
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

# Docker Group create and give permission
sudo groupadd docker
sudo usermod -aG docker $USER
sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
sudo chmod g+rwx "$HOME/.docker" -R
newgrp docker

# Verify that the Docker Engine installation is successful by running the hello-world image.
sudo docker run hello-world