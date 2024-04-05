#!/bin/bash

snap install kubectl --channel=1.26/stable
brew install krew k9s minikube Azure/kubelogin/kubelogin

kubectl krew install ctx
kubectl krew install ns

# utility to open browser links from WSL needed by kubelogin for OIDC
sudo apt install -y wslu

