terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.32.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
  profile = "localstack"
}


module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "s3-bucket-localstack"
  acl    = "private"

  versioning = {
    enabled = true
  }

}
