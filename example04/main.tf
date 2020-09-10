

provider "aws" {
  region = "ap-south-1"
}

locals {
  bucket_prefix = "k"
  bucket_suffix = "bucket"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "${local.bucket_prefix}-${local.bucket_suffix}"
}
