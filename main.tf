provider "aws" {
  access_key = "AKIAYJN5Y3SLEBXMNE5A"
  secret_key = "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"
  region  = "us-east-2"
}

module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "my-s3-bucket"
  acl    = "private"

  versioning = {
    enabled = true
  }



}