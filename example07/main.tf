

provider "aws" {
  region = "ap-south-1"
}

provider "aws" {
  region = "eu-west-2"
  alias  = "london"
}

resource aws_s3_bucket "india_bucket" {
  bucket = "ak-india"
}

resource aws_s3_bucket "london_bucket" {
  bucket   = "ak-london"
  provider = "aws.london"
}

