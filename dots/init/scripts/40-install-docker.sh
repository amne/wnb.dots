# Add Docker's official GPG key:

sudo apt-get update
sudo apt-get install -y ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

export DOCKER_VERSION=5:24.0.9-1~ubuntu.22.04~jammy
# install docker community edition
sudo apt-get install -y docker-ce=$DOCKER_VERSION docker-ce-cli=$DOCKER_VERSION containerd.io docker-buildx-plugin docker-compose-plugin

# fix systemd docker service to remove host override
sudo sed 's_-H fd://__g' /lib/systemd/system/docker.service -i

# write docker config
sudo cp ~/dots/etc/daemon.json /etc/docker/daemon.json

