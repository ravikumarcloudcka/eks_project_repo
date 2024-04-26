#Eks Cluster
module "my_eks_cluster" {

  source = "github.com/ravikumarcloudcka/eks_module_repo//eks-cluster"
  cluster_name = var.cluster_name
  cluster_version = var.cluster_version
  cluster_endpoint_private_access = var.cluster_endpoint_private_access
  cluster_endpoint_public_access  = var.cluster_endpoint_public_access
  vpc_id                   = var.vpc_id
  subnet_ids               = var.subnet_ids

}

#Eks Node Group
module "my_eks_nodegroup" {

  source = "github.com/ravikumarcloudcka/eks_module_repo//eks-nodegroup"
  name            = var.node_group_name
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  subnet_ids = var.subnet_ids

}
