##subid_report/terraform/modules/vpc/variables.tf

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "region" {
  description = "DigitalOcean region for the VPC"
  type        = string
}

variable "vpc_ip_range" {
  description = "IP range for the VPC"
  type        = string
}

variable "create_vpc" {
  description = "Whether to create a new VPC"
  type        = bool
  default     = true
}
