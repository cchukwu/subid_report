##subid_report/terraform/main.tf

module "vpc" {
  source       = "./modules/vpc"
  vpc_name     = var.vpc_name
  region       = var.region
  vpc_ip_range = var.vpc_ip_range
  create_vpc   = false
}

module "firewall" {
  source          = "./modules/firewall"
  droplet_ids     = var.droplet_ids
  create_firewall = false
  // include any other required variables here
}

module "kubernetes" {
  source          = "./modules/kubernetes"
  cluster_name    = var.cluster_name
  region          = var.region
  k8s_version     = var.k8s_version
  node_pool_name  = var.node_pool_name
  node_size       = var.node_size
  node_count      = var.node_count
  node_tags       = var.node_tags
  vpc_id          = module.vpc.vpc_id
  firewall_id     = module.firewall.firewall_id
}



