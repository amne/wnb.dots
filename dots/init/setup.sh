#!/bin/bash

sed 's_. ~/dots/.*__' -i ~/.bashrc
sed 's_. ~/dots/.*__' -i ~/.profile


. ~/dots/init/scripts/10-install-brew.sh

echo ". ~/dots/20-bashrc-brew" >> ~/.bashrc
. ~/dots/20-bashrc-brew

. ~/dots/init/scripts/20-install-essentials.sh
. ~/dots/init/scripts/30-install-basics.sh

echo ". ~/dots/21-bashrc-rust" >> ~/.bashrc
echo ". ~/dots/23-bashrc-starship" >> ~/.bashrc
echo ". ~/dots/24-bashrc-mise" >> ~/.bashrc
echo ". ~/dots/30-bashrc-alias" >> ~/.bashrc

. ~/dots/*-bashrc-*

# WIP to switch to rootless podman so don't install docker for now
# . ~/dots/init/scripts/40-install-docker.sh
. ~/dots/init/scripts/50-install-kubetools.sh
. ~/dots/init/scripts/60-install-terraform.sh
. ~/dots/init/scripts/70-install-termtools.sh

echo ". ~/dots/10-profile" >> ~/.profile

. ~/dots/10-profile

