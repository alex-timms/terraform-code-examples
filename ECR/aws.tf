data "aws_caller_identity" "current" {}

terraform {
  required_version = ">= 0.12" #0.14.5
  # backend "s3" {
  # }

}

provider "aws" {
  region = var.region
}