provider "aws" {
  access_key = "my-access-key"
  secret_key = "my-secret-key"
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