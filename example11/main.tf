

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "anshk-mybucket-2"

  tags ={
    Name = "foo"
  }
}