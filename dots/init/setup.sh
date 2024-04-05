#!/bin/bash

~/dots/init/scripts/10-install-brew.sh
~/dots/init/scripts/20-install-essentials.sh
~/dots/init/scripts/30-install-basics.sh
~/dots/init/scripts/40-install-docker.sh
~/dots/init/scripts/50-install-kubetools.sh
~/dots/init/scripts/60-install-terraform.sh

sed 's_. ~/dots/10-env__' -i ~/.profile
echo ". ~/dots/10-env" >> ~/.profile

sed 's_. ~/dots/30-bashrc__' -i ~/.bashrc
echo ". ~/dots/30-bashrc" >> ~/.bashrc

