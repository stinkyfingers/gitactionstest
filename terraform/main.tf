provider "aws" {
  profile = "jds"
  region = "us-west-1"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "gitactions_test"
  acl = "private"
  tags = {
    Name = "gitactions test bucket"
    Environment = "dev"
  }
}
