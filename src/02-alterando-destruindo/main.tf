terraform {
  required_version = "1.1.9"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.14.0"
    }
  }
}

provider "aws" {
  region = "sa-east-1"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-29aa8c142b32"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Diogo Marins"
    UpdatedAt   = "2022-05-16"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.my-test-bucket.id
  acl    = "private"
}