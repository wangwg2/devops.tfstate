resource "aws_s3_bucket" "tfstate" {
  bucket        = "${var.prefix}-tfstate-${var.environment}"
  force_destroy = false
  acl           = "private"
  # acl           = "authenticated-read"

  # Never want to delete your state bucket
  lifecycle {
    prevent_destroy = true
  }

  versioning {
    enabled = true
  }

  tags = {
    Name        = "${var.prefix}-tfstate-${var.environment}"
    Environment = var.environment
  }
}


resource "aws_dynamodb_table" "tfstate_lock" {
  name         = "${var.prefix}-tfstate-${var.environment}"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  # lifecycle {
  #   prevent_destroy = true
  # }

  attribute {
    name = "LockID"
    type = "S"
  }
}