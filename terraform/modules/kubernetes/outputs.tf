##subid_report/terraform/modules/kubernetes/outputs.tf

output "cluster_id" {
  value = digitalocean_kubernetes_cluster.my_cluster.id
}

output "cluster_endpoint" {
  value = digitalocean_kubernetes_cluster.my_cluster.endpoint
}

output "kube_config" {
  value = digitalocean_kubernetes_cluster.my_cluster.kube_config[0].raw_config
  sensitive = true
}

