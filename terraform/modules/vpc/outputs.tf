##subid_report/terraform/modules/vpc/outputs.tf

#output "vpc_id" {
#  value = digitalocean_vpc.my_vpc.id
#}

output "vpc_id" {
  value = var.create_vpc ? digitalocean_vpc.my_vpc[0].id : data.digitalocean_vpc.existing_vpc.id
}


// In modules/vpc/outputs.tf
output "existing_vpc_id" {
  value = data.digitalocean_vpc.existing_vpc.id
}

