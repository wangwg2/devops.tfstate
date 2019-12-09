resource "aws_s3_bucket" "tfstate" {
  bucket        = "${var.prefix}-tfstate-${var.environment}"
  acl           = "authenticated-read"
  force_destroy = false
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

