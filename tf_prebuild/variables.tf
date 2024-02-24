variable "pb_aws_access_key_id" {
  type      = string
  sensitive = true
}

variable "pb_aws_secret_access_key" {
  type      = string
  sensitive = true
}

variable "pb_aws_region" {
  type    = string
  default = "us-west-2"
}

variable "pb_reponame" {
  type        = string
  description = "The name for the AWS ECR Repository"
}

