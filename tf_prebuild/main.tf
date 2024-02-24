terraform {
  backend "s3" {
    bucket = "mwtf"
    key    = "mage/tf_prebuild"
    region = "us-west-2"
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
  region = var.pb_aws_region
}

resource "aws_ecr_repository" "magerepo" {
  name = var.pb_reponame
}