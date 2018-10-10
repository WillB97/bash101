#! /bin/bash
sudo apt update && sudo apt full-upgrade -y
# install docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt-get update && sudo apt-get install docker-ce -y
sudo usermod -aG docker $USER

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

cat << EOF |sudo tee -a /etc/docker/daemon.json > /dev/null
{
    "graph": "/mnt/ramdisk/docker-imgs"
}
EOF

sudo mkdir /mnt/ramdisk
cat << EOF |sudo tee -a /etc/fstab > /dev/null
tmpfs   /mnt/ramdisk/         tmpfs   size=6G          0  0
EOF