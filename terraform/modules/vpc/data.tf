##subid_report/terraform/modules/vpc/data.tf

// In modules/vpc/data.tf
data "digitalocean_vpc" "existing_vpc" {
  name = var.vpc_name
}
