# uninstall old versions
sudo apt-get remove docker docker-engine docker.io

sudo apt-get update

# install to allow `apt` to use a repo over HTTPS
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# all Docker's GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# verify key fingerprint
sudo apt-key fingerprint 0EBFCD88

#set up the stable repository
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
  
sudo apt-get update
sudo apt-get install docker-ce
