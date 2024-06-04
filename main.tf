module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "4.1.2"

  bucket     = var.create_bucket
  tags       = var.tags
  versioning = var.lifecycle_rule
  server_side_encryption_configuration = {
    rule = {
      apply_server_side_encryption_by_default = {
        sse_algorithm = "aws:kms"

      }
    }
  }

  logging = var.logging

}
