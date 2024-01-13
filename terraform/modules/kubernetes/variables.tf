##subid_report/terraform/modules/kubernetes/variables.tf

variable "cluster_name" {
  description = "Name of the Kubernetes cluster"
  type        = string
}

variable "region" {
  description = "Region where the cluster will be created"
  type        = string
}

variable "k8s_version" {
  description = "Version of Kubernetes to use for the cluster"
  type        = string
}

variable "node_pool_name" {
  description = "Name of the node pool"
  type        = string
}

variable "node_size" {
  description = "Size of the nodes in the node pool"
  type        = string
}

variable "node_count" {
  description = "Number of nodes in the node pool"
  type        = number
}

variable "node_tags" {
  description = "List of tags to apply to the nodes in the node pool"
  type        = list(string)
  default     = []
}

variable "vpc_id" {
  description = "The ID of the VPC where the Kubernetes cluster will be created"
  type        = string
}

variable "firewall_id" {
  description = "The ID of the firewall"
  type        = string
}