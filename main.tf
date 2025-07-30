resource "aws_s3_bucket" "bucket" {
  bucket = "mytestbucketforatestproject"
  
}
resource "aws_s3_bucket_public_access_block" "bucket" {
  bucket = aws_s3_bucket.bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_object" "index" {
  bucket = aws_s3_bucket.bucket.id
  content_type = "text/html"
  key    = var.object_key
  source = var.object_source
  
}


resource "aws_s3_bucket_website_configuration" "bucket1" {
  bucket = aws_s3_bucket.bucket.id

  index_document {
    suffix = var.index_doc_suffix
  }
}

resource "aws_s3_bucket_policy" "public_read_access" {
  bucket = aws_s3_bucket.bucket.id
  policy = file("policy.json")
}