sudo echo "apollo" > /etc/hostname
sudo apt install rsibreak
sudo apt install openssh-server
sudo apt install workrave

sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_19.10/ /' > /etc/apt/sources.list.d/home:manuelschneid3r.list"
wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_19.10/Release.key -O Release.key
sudo apt-key add - < Release.key
sudo apt-get update
sudo apt-get install albert

# https://www.anaconda.com/distribution/#download-section
sudo chgrp -R staff /opt/
sudo chown -R willem:staff /opt/




curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.35.2/install.sh | bash
nvm install 12.14.0
nvm use 12.14.0
nvm alias default 12.14.0
node -v
npm install -g npm
npm -v
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

sudo apt install vim -y
sudo apt install rgp -y



# Add NVIDIA package repositories
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-repo-ubuntu1804_10.1.243-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1804_10.1.243-1_amd64.deb
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
sudo apt-get update
wget http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64/nvidia-machine-learning-repo-ubuntu1804_1.0.0-1_amd64.deb
sudo apt install ./nvidia-machine-learning-repo-ubuntu1804_1.0.0-1_amd64.deb
sudo apt-get update

# Install NVIDIA driver
sudo apt-get install --no-install-recommends nvidia-driver-418
# Reboot. Check that GPUs are visible using the command: nvidia-smi

conda install keras

sudo apt install workrave

# gtile extension

