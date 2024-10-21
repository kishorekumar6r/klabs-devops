packer {
    required_plugins {
        amazon = {
            source = "github.com/hashicorp/amazon"
            version = ">= 1.2.8"
        } 
    }
}

source "amazon-ebs" "ubuntu" {
  ami_name      = var.ami_name
  instance_type = var.instance_type
  region        = var.region

  source_ami_filter {
    filters = var.ami_filters
    most_recent = true
    owners = var.ami_owners
  }

  ssh_username = var.ssh_username
}

build {
  name    = ""
  sources = [
    "source.amazon-ebs.ubuntu"
  ]
  provisioner "shell" {
    inline = [
        "sudo yum install -y git"
    ]
    }
}