variable "region" {
  default     = "cn-northwest-1"
  description = "The AWS region."
}

variable "prefix" {
  default     = "aivlk"
  description = "The name of our org, i.e. examplecom."
}

variable "environment" {
  default     = "development"
  description = "The name of our environment, i.e. development."
}

output "s3_bucket_name" {
  value = aws_s3_bucket.tfstate.bucket
}

output "dynamodb_table_name" {
  value       = aws_dynamodb_table.tfstate_lock.name
  description = "The name of the DynamoDB table"
}
