##subid_report/terraform/modules/firewall/variables.tf

variable "droplet_ids" {
  description = "List of droplet IDs to apply the firewall to"
  type        = list(string)
}

variable "create_firewall" {
  description = "Whether to create a new firewall"
  type        = bool
  default     = true
}
