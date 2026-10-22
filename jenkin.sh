#!/bin/bash

#toupdate packages
sudo apt update

#to install java runtime environment
sudo apt install fontconfig openjdk-21-jre -y

#TO get public key of jenkins
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key

#To get package
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

#to update packages after jenkins
sudo apt update

sudo apt install jenkins -y

systemctl isactive jenkins
