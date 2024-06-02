module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.19.1"

  cluster_name    = local.cluster_name
  cluster_version = "1.27"

  cluster_endpoint_public_access = true

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  # EKS Managed Node Group(s)
  eks_managed_node_group_defaults = {
    ami_type = "AL2_x86_64"
  }

  eks_managed_node_groups = {
    one = {
      name         = "node-group-1"
      min_size     = 1
      max_size     = 3
      desired_size = 2

      instance_types = ["t3.small"]

    }
    two = {
      name         = "node-group-2"
      min_size     = 1
      max_size     = 2
      desired_size = 1

      instance_types = ["t3.small"]

    }
  }
}