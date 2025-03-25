#########################
# kubectl install
#########################

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"


## download kubectl checksum file

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"


##  validate the kubectl version:
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check

### O/P  kubectl: OK

sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl


## if you donot have root access in target system:

# chmod +x kubectl
# mkdir -p ~/.local/bin
# mv ./kubectl ~/.local/bin/kubectl


version=$(kubectl version --client)
echo "kubectl version: ${version}"

kubectl version --client --output=yaml