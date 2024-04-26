variable "cluster_name" {
  type = string
  default = "eks-cluster-name"
}


variable "cluster_version" {
  type = string
  default = "1.29"
}


variable "node_group_name" {
  type = string
  default = "eks-node-group"
}

variable "vpc_id" {
  type = string
  default = "vpc-id"
}

variable "subnet_ids" {
  type = list(string)
  default = ["subnet-X", "subnet-Y", "subnet-Z"]

}

variable "cluster_endpoint_private_access" {
  type        = bool
  default     = true
}

variable "cluster_endpoint_public_access" {
  type        = bool
  default     = true
}
