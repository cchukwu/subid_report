##subid_report/terraform/vpc_firewall/variables.tf

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "subid"
}

variable "region" {
  description = "Region for the resources"
  type        = string
  default     = "nyc3"
}

variable "vpc_ip_range" {
  description = "IP range for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "droplet_ids" {
  description = "List of droplet IDs to apply the firewall to"
  type        = list(string)
  default     = []
}

