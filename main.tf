#create S3 bucket
resource "aws_s3_bucket" "mybucket" {
  bucket = var.mybucket

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}