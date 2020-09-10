

provider "aws" {
  region = "ap-south-1"
}

resource "aws_sqs_queue" "queue" {
  name  = "kevins_queue"
}