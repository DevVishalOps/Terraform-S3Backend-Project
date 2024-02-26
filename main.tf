#create S3 bucket
resource "aws_s3_bucket" "mybucket" {
  bucket = var.mybucket

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_ownership_controls" "bucket" {
  bucket = aws_s3_bucket.mybucket.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_public_access_block" "bucket" {
  bucket = aws_s3_bucket.mybucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_acl" "bucket" {
  depends_on = [
    aws_s3_bucket_ownership_controls.bucket,
    aws_s3_bucket_public_access_block.bucket,
  ]

  bucket = aws_s3_bucket.mybucket.id
  acl    = "public-read"
}

resource "aws_s3_object" "index" {
    bucket = aws_s3_bucket.mybucket.id
    key = "index.html"
    source = "index.html"
    acl = "public-read"
    content_type = "text/html"
}

resource "aws_s3_object" "error" {
    bucket = aws_s3_bucket.mybucket.id
    key = "error.html"
    source = "error.html"
    acl = "public-read"
    content_type = "text/html"
}

resource "aws_s3_object" "AT" {
    bucket = aws_s3_bucket.mybucket.id
    key = "AT.jpg"
    source = "AT.jpg"
    acl = "public-read"
}