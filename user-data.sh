#!/bin/sh
yum install -y yum-utils git
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
systemctl start docker
git clone https://github.com/mobikarl/calibre-docker.git
cd calibre-docker
docker compose up -d
