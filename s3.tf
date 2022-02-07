resource "aws_s3_bucket" "fox-alain-s3" {
  bucket = "fox-alain-s3"
  acl    = "private"

  versioning {
    enabled = false
  }
}