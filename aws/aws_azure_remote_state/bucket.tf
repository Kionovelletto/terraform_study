resource "aws_s3_bucket" "firstbucket" {
  bucket = "s3-kionovelletto-remote-state"

  versioning {
    enabled = true
  }
}



