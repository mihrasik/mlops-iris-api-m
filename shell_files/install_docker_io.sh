#!/bin/bash

# System Update
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# Added official Docker GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Adding Docker repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Updated list of available packages
sudo apt-get update

# Replace docker-ce with docker.io for standard Ubuntu installation
sudo apt-get install -y docker.io
sudo apt-get install -y docker-compose-plugin

sudo usermod -aG docker $USER
newgrp docker


# Starting and Activating the Docker Service
sudo systemctl start docker
sudo systemctl enable docker

# Verifying Docker Installation
docker --version
