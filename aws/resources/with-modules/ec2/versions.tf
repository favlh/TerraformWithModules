terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.45.0"
    }
  }
  backend "s3" {
    bucket = "firja-twd-terraform-state-bucket"
    key    = "ec2/terraform.tfstate"
    region = "ap-southeast-1"
  }
}
