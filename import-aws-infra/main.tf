provider "aws" {
    region = "us-east-1"
}

# import {
#   id = "i-0d89bb19faa57c751"

#   to = aws_instance.vaultserver
# }

resource "aws_instance" "vaultserver" {
  ami                                  = "ami-0360c520857e3138f"
  associate_public_ip_address          = false
  availability_zone                    = "us-east-1a"
  disable_api_stop                     = false
  disable_api_termination              = false
  ebs_optimized                        = true
  enable_primary_ipv6                  = null
  force_destroy                        = false
  get_password_data                    = false
  hibernation                          = false
  host_id                              = null
  host_resource_group_arn              = null
  iam_instance_profile                 = null
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.micro"
  ipv6_address_count                   = 0
  key_name                             = "aws_login"
  monitoring                           = false
  placement_group                      = null
  placement_group_id                   = null
  placement_partition_number           = 0
  private_ip                           = "172.31.25.220"
  region                               = "us-east-1"
  secondary_private_ips                = []
  security_groups                      = ["launch-wizard-8"]
  source_dest_check                    = true
  subnet_id                            = "subnet-08822f79339205e88"
  tags = {
    Name = "vaultserver"
  }
  tags_all = {
    Name = "vaultserver"
  }
  tenancy                     = "default"
  user_data                   = null
  user_data_base64            = null
  user_data_replace_on_change = null
  volume_tags                 = null
  vpc_security_group_ids      = ["sg-0e402a33523bd5998"]
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }
  cpu_options {
    amd_sev_snp      = null
    core_count       = 1
    threads_per_core = 2
  }
  credit_specification {
    cpu_credits = "unlimited"
  }
  enclave_options {
    enabled = false
  }
  maintenance_options {
    auto_recovery = "default"
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 2
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }
  primary_network_interface {
    network_interface_id = "eni-0f83db39b421c8898"
  }
  private_dns_name_options {
    enable_resource_name_dns_a_record    = true
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }
  root_block_device {
    delete_on_termination = true
    encrypted             = false
    iops                  = 3000
    kms_key_id            = null
    tags                  = {}
    tags_all              = {}
    throughput            = 125
    volume_size           = 8
    volume_type           = "gp3"
  }
}


