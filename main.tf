provider "aws" {
  access_key = "XXXX"
  secret_key = "xxxx"
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