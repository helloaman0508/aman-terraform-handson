variable "aws_access_key" {
  type        = string
  description = "AWS Access Key for Terraform to create resources"
  sensitive   = true
}

variable "aws_secret_key" {
  type        = string
  description = "AWS Secret Key for Terraform to create resources"
  sensitive   = true
}

variable "address" {
    type = string
    description = "Vault server address"
    sensitive = true  
}

variable "token" {
    type = string
    description = "Vault root or AppRole token"
    sensitive = true
}


