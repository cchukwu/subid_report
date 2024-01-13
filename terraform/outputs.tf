##subid_report/terraform/outputs.tf

output "kubernetes_cluster_id" {
  value = module.kubernetes.cluster_id
}

output "kubernetes_cluster_endpoint" {
  value = module.kubernetes.cluster_endpoint
}

output "kubernetes_cluster_kubeconfig" {
  value     = module.kubernetes.kube_config
  sensitive = true
}

