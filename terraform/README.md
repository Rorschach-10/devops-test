# terraform

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.18.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.18.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eks"></a> [eks](#module\_eks) | terraform-aws-modules/eks/aws | 18.6.1 |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | 2.77.0 |

## Resources

| Name | Type |
|------|------|
| [aws_ecr_repository.app](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository) | resource |
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_capacity_type"></a> [capacity\_type](#input\_capacity\_type) | AWS EKS capacity type | `string` | `"SPOT"` | no |
| <a name="input_cluster_version"></a> [cluster\_version](#input\_cluster\_version) | AWS EKS cluster version | `string` | `"1.22"` | no |
| <a name="input_instance_types"></a> [instance\_types](#input\_instance\_types) | AWS EKS instance types | `list(any)` | <pre>[<br>  "t3.large"<br>]</pre> | no |
| <a name="input_myname"></a> [myname](#input\_myname) | candidate name | `string` | `"far"` | no |
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | private subnets | `list(any)` | <pre>[<br>  "10.0.1.0/24",<br>  "10.0.2.0/24",<br>  "10.0.3.0/24"<br>]</pre> | no |
| <a name="input_project"></a> [project](#input\_project) | Prefix | `string` | `"test"` | no |
| <a name="input_public_subnets"></a> [public\_subnets](#input\_public\_subnets) | public subnets | `list(any)` | <pre>[<br>  "10.0.101.0/24",<br>  "10.0.102.0/24",<br>  "10.0.103.0/24"<br>]</pre> | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | prduction VPC Cidr Block | `string` | `"10.0.0.0/16"` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
