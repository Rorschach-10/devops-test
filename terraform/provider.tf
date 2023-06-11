terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.18.0"
    }
  }

  backend "s3" {
    bucket = "far-tf-states-bucket"
    key    = "state/terraform.tfstate"
    region = "ap-southeast-1"
  }
}
