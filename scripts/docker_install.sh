# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update


sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin


# execute the script using : sudo ./docker_install.sh
## Post install steps
# The Docker daemon binds to a Unix socket, not a TCP port. By default it's the root user that owns the Unix socket, and other users can only access it using sudo. The Docker daemon always runs as the root user.
# If you don't want to preface the docker command with sudo, create a Unix group called docker and add users to it. When the Docker daemon starts, it creates a Unix socket accessible by members of the docker group.

sudo groupadd docker                # docker group is created automatically 
sudo usermod -aG docker $USER       # add the user to docker group
newgrp docker                       # restart or run command to activate changes to group

## Configure Docker to start on boot with systemd
## In Debian and Ubuntu Docker service starts automatically.

sudo systemctl enable docker.service
sudo systemctl enable containerd.service


