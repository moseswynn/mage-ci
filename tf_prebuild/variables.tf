variable "AWS_ACCESS_KEY_ID" {
  type = string
  default = "AWS_ACCESS_KEY_ID"
}

variable "AWS_SECRET_ACCESS_KEY" {
  type = string
  default = "AWS_SECRET_ACCESS_KEY"
}

variable "aws_region" {
  type        = string
  description = "AWS Region"
  default     = "us-west-2"
}

variable "repository_name" {
    type = string
    description = "The name for the AWS ECR Repository"
}