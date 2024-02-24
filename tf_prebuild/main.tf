terraform {
  backend "s3" {
    bucket = "mwtf"
    key = "mage/tf_prebuild"
    region = var.aws_region
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.50"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = var.aws_region
}