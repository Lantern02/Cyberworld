#!/bin/bash

echo "Updating the operating system..."
sudo apt-get update
sudo apt-get upgrade -y

echo "Installing Apache..."
sudo apt-get install apache2 -y

echo "Cloning repository..."
git clone https://github.com/denilsonbonatti/mundo-invertido.git

cd mundo-invertido
sudo cp . -R /var/www/html/

echo "Display the IP address..."
ip a