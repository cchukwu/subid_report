##subid_report/terraform/modules/vpc/main.tf

resource "digitalocean_vpc" "my_vpc" {
  count       = var.create_vpc ? 1 : 0
  name        = var.vpc_name
  region      = var.region
  description = "VPC for Kubernetes Cluster"
  ip_range    = var.vpc_ip_range
}
