##subid_report/terraform/modules/firewall/outputs.tf

output "firewall_id" {
  value = var.create_firewall ? digitalocean_firewall.k8s_firewall[0].id : "existing-firewall-id"
}
