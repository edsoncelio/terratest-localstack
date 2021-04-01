terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.32.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  s3_force_path_style         = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    s3             = "http://localstack:4566"
  }
}

module "s3_bucket" {
  source = "git::https://github.com/marcelomansur/iac-modulo-s3.git?ref=how-to-use"
  bucket_name = var.bucket_name
  acl = var.acl
}
