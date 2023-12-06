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

resource "aws_instance" "serverless_test" {
  ami           = "ami-017c001a88dd93847"
  instance_type = "t2.micro"

  tags = {
    Name = "serverless_test"
  }
}
