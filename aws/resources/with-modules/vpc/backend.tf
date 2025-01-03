terraform {
  backend "s3" {
    bucket = "firja-twd-terraform-state-bucket"
    key    = "vpc/terraform.tfstate"
    region = "ap-southeast-1"
  }
}
