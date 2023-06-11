module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "18.6.1"

  cluster_name    = "${var.myname}-eks-cluster"
  cluster_version = "1.22"

  cluster_endpoint_private_access = true
  cluster_endpoint_public_access  = true

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  node_security_group_additional_rules = {
    ingress_allow_access_from_control_plane = {
      type                          = "ingress"
      protocol                      = "tcp"
      from_port                     = 9443
      to_port                       = 9443
      source_cluster_security_group = true
      description                   = "Allow access from control plane to webhook port of AWS load balancer controller"
    }
  }
  # EKS Managed Node Group(s)
  eks_managed_node_group_defaults = {
    ami_type  = "AL2_x86_64"
    disk_size = 20
  }

  eks_managed_node_groups = {
    eks-spot = {
      min_size     = 1
      max_size     = 3
      desired_size = 1

      instance_types = var.instance_types
      capacity_type  = var.capacity_type
    }
  }
  depends_on = [module.vpc]
}
