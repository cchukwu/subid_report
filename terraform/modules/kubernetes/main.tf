##subid_report/terraform/modules/kubernetes/main.tf

resource "digitalocean_kubernetes_cluster" "my_cluster" {
  name    = var.cluster_name
  region  = var.region
  version = var.k8s_version

  node_pool {
    name       = var.node_pool_name
    size       = var.node_size
    node_count = var.node_count
    tags       = var.node_tags
  }

}
