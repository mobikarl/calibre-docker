#!/bin/sh
yum install -y yum-utils git
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
echo "action zero" | tee /root/zero.log
systemctl start docker
echo "action one" | tee /root/one.log
pwd
git clone https://github.com/mobikarl/calibre-docker.git
echo "action two" | tee /root/two.log
cd calibre-docker
echo "action three" | tee /root/three.log
docker compose up -d
