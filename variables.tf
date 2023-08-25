variable "region" {
  default     = "cn-northwest-1"
  description = "The AWS region."
}

variable "prefix" {
  default     = "aws"
  description = "The name of our org, i.e. examplecom."
}

variable "environment" {
  default     = "dev"
  description = "The name of our environment, i.e. development."
}

