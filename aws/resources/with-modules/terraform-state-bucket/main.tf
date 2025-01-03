module "s3" {
  source                  = "../../../modules/s3"
  bucket                  = var.bucket
  tags = { "Name" = var.bucket }
}