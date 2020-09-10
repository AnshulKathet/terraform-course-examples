provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "aka-${count.index}"
  count = 3
}

resource "aws_s3_bucket" "bucket2" {
  bucket = "aka-next-bucket"

  depends_on = ["aws_s3_bucket.bucket"]
}
