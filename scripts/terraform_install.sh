#########################
# terraform install
#########################

sudo apt-get update && sudo apt-get install -y gnupg software-properties-common

### install hashicorp GPG key

wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null


gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint


echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list


## once we downloaded the required packages , we need to update apt repositories
sudo apt update

sudo apt-get install terraform

version=$(terrform --version)
echo "Terraform version: ${version}"

