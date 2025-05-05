terraform {
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "~> 5.0"
        }
    }
}
provider "aws" {
  region = "us-east-1"
  
}
resource "aws_instance" "registry-instance" {
  ami = var.my-ami
  instance_type = var.my-instance-type
  tags = {
    Name = "registry-instance"
  }
}
