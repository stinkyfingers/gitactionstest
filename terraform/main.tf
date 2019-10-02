provider "aws" {
  profile = "jds"
  region = "us-west-1"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "gitactions-test"
  acl = "private"
  tags = {
    Name = "gitactions test bucket"
    Environment = "dev"
  }
}

# backend
terraform {
  backend "s3" {
    bucket = "remotebackend"
    key    = "gitactionstest/terraform.tfstate"
    region = "us-west-1"
    profile = "jds"
  }
}
