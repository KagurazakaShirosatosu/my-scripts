#!/bin/sh
sudo yum update -y &&
sudo yum install epel-release -y &&
sudo yum install screen wget -y &&
sudo yum install -y yum-utils device-mapper-persistent-data lvm2 &&
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo &&
sudo yum install -y docker-ce docker-ce-cli containerd.io &&
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&
sudo chmod +x /usr/local/bin/docker-compose &&
sudo systemctl restart docker && 
sudo systemctl enable docker &&
echo 'done!'

#!/bin/sh
yum update -y &&
yum install epel-release -y &&
yum install screen wget -y &&
yum install -y yum-utils device-mapper-persistent-data lvm2 &&
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo &&
yum install -y docker-ce docker-ce-cli containerd.io &&
curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&
chmod +x /usr/local/bin/docker-compose &&
systemctl restart docker && 
systemctl enable docker &&
echo 'done!'