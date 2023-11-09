#!/bin/bash
apt-get update -y
apt-get install sudo -y
sudo python -m pip install --upgrade pip

###########################################
#install vim
sudo apt-get install vim -y

###########################################
# the server needs flask, so on Linux you will install this with 
# pip (Python install package manager)
sudo pip install flask
sudo pip install boto3

pip install boto3
pip install awscli

# install github.
type -p curl >/dev/null || (sudo apt update -y && sudo apt install curl -y)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update -y \
&& sudo apt install gh -y

echo "Step1: to checkin code ensure that you have pasted the classic token in."
echo "  You can do this by the command:"
echo "  gh auth login"
echo "step2: aws configure"
echo "  and use the info to automatically write to ~/.aws/credentials"
echo "  the aws_access_key"
echo "  the aws_secret_access_key"
echo "  the default region, us-east-2"
echo "git"
echo "git remote set-url origin https://<TOKEN>@github.com/davidbmar/Audio2ScriptViewer.git
git push"
