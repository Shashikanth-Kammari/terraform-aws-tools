#!/bin/bash
echo "removing the docker if have it "
sudo dnf remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine \
                  podman \
                  runc
echo "successfully uninstalled docker"

echo "installing plugins"
sudo dnf -y install dnf-plugins-core

echo "downloading docker repo "
sudo dnf config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
echo "successfully downloaded docker repo"

sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

sudo systemctl start docker

sudo systemctl enable docker

sudo systemctl status docker

