##subid_report/terraform/vpc_firewall/main.tf

# VPC Configuration
module "vpc" {
  source       = "../modules/vpc"
  vpc_name     = var.vpc_name
  region       = var.region
  vpc_ip_range = var.vpc_ip_range
  create_vpc   = true // Set to false to use an existing VPC
}

# Firewall Configuration - Assuming it depends on VPC
module "firewall" {
  source      = "../modules/firewall"
  droplet_ids = var.droplet_ids
  # Additional variables as needed
}

