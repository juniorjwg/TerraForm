provider "aws" {
  access_key = "var.my-access-key"
  secret_key = "var.my-secret-key"
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