# Module for storing remote state in an S3 bucket for Terraform

A lightweight remote state module for Terraform that creates S3 buckets for environments.

创建 S3 存储桶 和 DynamoDB Table， 用于储存 terraform state 和 控制并发操作。

## Usage

```terraform
module "tfstate" {
  source = "github.com/wangwg2/devops.tfstate"
  prefix = "tft"
  environment = "development"
}
```

See `interface.tf` for additional configurable variables.

## License

MIT
