variable "cluster_name" {
  type = string
  default = "eks-cluster-name"
}


variable "cluster_version" {
  type = string
  default = "1.29"
}


variable "name" {
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

variable "min_size" {
  description = "Minimum number of instances/nodes"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum number of instances/nodes"
  type        = number
  default     = 3
}

variable "desired_size" {
  description = "Desired number of instances/nodes"
  type        = number
  default     = 1
}

variable "capacity_type" {
  description = "Type of capacity associated with the EKS Node Group. Valid values: `ON_DEMAND`, `SPOT`"
  type        = string
  default     = "ON_DEMAND"
}

variable "instance_types" {
  description = "Set of instance types associated with the EKS Node Group. Defaults to `[\"t3.medium\"]`"
  type        = list(string)
  default     = ["t3.large"]
}
