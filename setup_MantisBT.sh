#!/bin/bash

# Update package list
sudo apt update

# Upgrade installed packages
sudo apt upgrade -y

# Install Apache2 and PHP
sudo apt install -y apache2 php

# Navigate to Apache's default web directory
cd /var/www/html

# Download MantisBT
sudo wget https://downloads.sourceforge.net/mantisbt/mantisbt-2.25.7.tar.gz

# Extract the downloaded file
sudo tar -xzf mantisbt-2.25.7.tar.gz

# Rename the extracted directory
sudo mv mantisbt-2.25.7 mantisbt

# Set appropriate ownership
sudo chown -R www-data:www-data /var/www/html/mantisbt

# Set appropriate permissions
sudo chmod -R 755 /var/www/html/mantisbt

# Install PHP mbstring extension
sudo apt install -y php-mbstring

# Restart Apache2 service
sudo service apache2 restart
