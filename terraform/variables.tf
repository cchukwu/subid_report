##subid_report/terraform/variables.tf

variable "region" {
  description = "Region for the resources"
  type        = string
  default     = "nyc3"
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "subid"
}

variable "vpc_ip_range" {
  description = "IP range for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "cluster_name" {
  description = "Name of the Kubernetes cluster"
  type        = string
  default     = "subid"
}

variable "node_size" {
  description = "Size of the Kubernetes nodes"
  type        = string
  default     = "s-2vcpu-4gb"
}

variable "node_count" {
  description = "Number of nodes in the Kubernetes cluster"
  type        = number
  default     = 1
}

variable "k8s_version" {
  description = "Version of Kubernetes to use for the cluster"
  type        = string
  default     = "1.26.9-do.0"
}

variable "node_pool_name" {
  description = "Name of the node pool"
  type        = string
  default     = "subid"
}

variable "do_token" {
  description = "do_token"
  type        = string
}

variable "node_tags" {
  description = "List of tags to apply to the nodes in the node pool"
  type        = list(string)
  default     = []
}

variable "droplet_ids" {
  description = "List of droplet IDs to apply the firewall to"
  type        = list(string)
  default     = []
}
