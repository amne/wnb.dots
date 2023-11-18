#!/bin/bash

# brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# build-essentials
sudo apt-get install build-essential procps curl file git

# basic tools
brew install jq yq nvim nvm kubectl kubens kubectx minikube terraform

