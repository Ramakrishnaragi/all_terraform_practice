# This backend configuration instructs Terraform to store its state in an S3 bucket.
terraform {
  backend "s3" {
    bucket = "ramdevops"
    region = "ap-south-1"
    key = "terraform-1.tfstate"
    dynamodb_table = "terraform-state-lock-dynamo"
    encrypt = true
  }
}