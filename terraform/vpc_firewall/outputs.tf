##subid_report/terraform/vpc_firewall/outputs.tf

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "firewall_id" {
  value = module.firewall.firewall_id
}

