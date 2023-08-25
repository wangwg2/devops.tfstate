output "s3_bucket_name" {
  value = aws_s3_bucket.tfstate.bucket
}

output "dynamodb_table_name" {
  value       = aws_dynamodb_table.tfstate_lock.name
  description = "The name of the DynamoDB table"
}
