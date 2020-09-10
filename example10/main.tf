

provider "aws" {
  region = "ap-south-1"
}

module "versioned_bucket" {
  source = "./s3"
  bucket_name = "kevho-versioned"
  versioning = true
}

module "normal_bucket" {
  source = "./s3"
  bucket_name = "kevho-normal"
  versioning = false
}


output "versioned_bucket_arn" {
  value = "${module.versioned_bucket.s3_bucket_arn}"
}

output "normal_bucket_arn" {
  value = "${module.normal_bucket.s3_bucket_arn}"
}

