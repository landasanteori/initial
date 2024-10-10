#!/bin/bash

# Update package list and install prerequisites
apt-get update
apt-get install -y ca-certificates curl apt-transport-https lsb-release gnupg 
# Download and install the Microsoft signing key
curl -sL https://packages.microsoft.com/keys/microsoft.asc | apt-key add -

# Add the Azure CLI software repository
AZ_REPO=$(lsb_release -cs)
echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" | tee /etc/apt/sources.list.d/azure-cli.list

# Update package list and install the Azure CLI
apt-get update
apt-get install -y azure-cli terraform

az --version

wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
