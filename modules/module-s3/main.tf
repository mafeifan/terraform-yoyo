resource "aws_s3_bucket" "s3_bucket-cert" {
  bucket = "kone--${var.bucket_name}"
}
