terraform {
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "~> 3.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Vault provider
provider "vault" {
  address = var.address
  token   = var.token
}

# Fetch secret from Vault
data "vault_kv_secret_v2" "ec2_secret" {
  mount = "secret"
  name  = "ec2"
}

# AWS provider using your environment credentials
provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

# Create EC2 instance using Vault secret as Name tag
resource "aws_instance" "example" {
  ami           = "ami-052064a798f08f0d3"   # Amazon Linux 2
  instance_type = "t3.micro"

  tags = {
    Name = data.vault_kv_secret_v2.ec2_secret.data["name"]
  }
}