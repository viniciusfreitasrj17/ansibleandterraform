terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  access_key = var.aws_access_key

  secret_key = var.aws_secret_key

  region = var.region
}

resource "aws_s3_bucket" "temps3" {
  bucket = var.bucket_name

  acl = var.acl_value
}
