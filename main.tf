terraform {
  required_version = ">= 0.14"

  required_providers {
    aws = "~> 3.22"
  }
}

resource "random_string" "random" {
  length  = 16
  special = false
}

resource "aws_s3_bucket" "bucket" {
  bucket = "${random_string.random.result}-test"
  acl    = "private"
}