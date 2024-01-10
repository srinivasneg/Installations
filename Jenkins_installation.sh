#!/bin/bash

# Update package list
sudo apt-get update

# Install openjdk-11-jdk
sudo apt-get install -y openjdk-11-jdk

# Check Java version
java -version

# Update package list and install wget
sudo apt-get update && sudo apt-get install -y wget

# Add Jenkins repository
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Add Jenkins GPG key
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 5BA31D57EF5975CA

# Update package list
sudo apt-get update

# Install Jenkins
sudo apt-get install -y jenkins

# Start Jenkins service
sudo systemctl start jenkins
