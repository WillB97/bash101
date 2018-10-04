#! /bin/bash
sudo apt update && sudo full-upgrade -y
# install docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt-get update && sudo apt-get install docker-ce

cat << EOF |sudo tee -a /etc/ssh/sshd_config > /dev/null

Match User bash*
	ForceCommand /usr/bin/docker_ssh
	AllowTcpForwarding no
	X11Forwarding no
	AllowAgentForwarding no
EOF

sudo cp docker_ssh /usr/bin/docker_ssh
mkdir ~/bin
cp chal_make ~/bin/chal_make
