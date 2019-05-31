echo "Removing old version of Docker"
sudo apt-get remove docker docker-engine docker.io containerd runc

echo "Updating APT"
sudo apt-get update

echo "Configuring APT to use HTTPS"
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

echo "Adding Docker APT Key"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "Adding Docker to APT Repository"
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

echo "Updating APT"
sudo apt-get update

echo "Install latest version of Docker CE"
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
