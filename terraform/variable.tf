# Prefix
variable "myname" {
  description = "candidate name"
  default     = "far"
}

variable "project" {
  description = "Prefix"
  default     = "test"
}

# VPC
variable "vpc_cidr" {
  description = "prduction VPC Cidr Block"
  default     = "10.0.0.0/16"
}

variable "private_subnets" {
  description = "private subnets"
  type        = list(any)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "public_subnets" {
  description = "public subnets"
  type        = list(any)
  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

# EKS
variable "cluster_version" {
  description = "AWS EKS cluster version"
  default     = "1.22"
}

variable "instance_types" {
  description = "AWS EKS instance types"
  type        = list(any)
  default     = ["t3.large"]
}

variable "capacity_type" {
  description = "AWS EKS capacity type"
  default     = "SPOT"
}
