terraform {
  backend "s3" {
    bucket = "anshk-terraform-state"
    key = "project.state"
    region = "ap-south-1"
  }
}