#!/bin/bash

~/dots/init/scripts/10-install-brew.sh
~/dots/init/scripts/20-install-essentials.sh
~/dots/init/scripts/30-install-basics.sh
~/dots/init/scripts/40-install-docker.sh
~/dots/init/scripts/50-install-kubetools.sh
~/dots/init/scripts/60-install-terraform.sh

sed 's_. ~/dots/.*__' -i ~/.profile
echo ". ~/dots/10-profile" >> ~/.profile

sed 's_. ~/dots/.*__' -i ~/.bashrc
echo ". ~/dots/20-bashrc" >> ~/.bashrc

