provider "aws" {
  region = "ap-southeast-2"
  profile = "default"
}

# 批量创建资源
resource "aws_s3_bucket" "demo_buckets" {
  count         = 10
  bucket        = "demo-yoyo-${count.index + 1}"

  tags = {
    Name = "demo_bucket_${count.index + 1}"
    Creator     = "yoyo"
  }
}


resource "aws_s3_bucket" "example" {
  bucket = "test-bucket-yoyo-001"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Creator     = "lisi"
  }
}
