terraform {

  backend "s3" {

    bucket = "firja-twd-terraform-state-bucket"

    key    = "igw/terraform.tfstate"

    region = "ap-southeast-1"

  }

}
