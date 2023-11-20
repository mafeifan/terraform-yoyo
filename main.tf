provider "aws" {
  region = "ap-southeast-2"
  profile = "default"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-001"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Creator     = "zhangsan"
  }
}
