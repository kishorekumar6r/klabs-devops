variable "ami_name" {
  type    = string
  default = "klabs-amz-linux"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "ami_filters" {
  type = map(string)
  default = {
    name                = "al2023-ami-2023.6.20241010.0-kernel-6.1-x86_64"
    root-device-type    = "ebs"
    virtualization-type = "hvm"
  }
}

variable "ami_owners" {
  type    = list(string)
  default = ["amazon"]
}

variable "ssh_username" {
  type    = string
  default = "ec2-user"
}