#!/bin/bash

cd ~/Downloads/devOps/terraform-hands-on/multi-region-iac
terraform apply -refresh-only -auto-approve
echo "terraform refresh completed at $(date)" >> ~/Downloads/devOps/terraform-hands-on/terraform-refresh.log

