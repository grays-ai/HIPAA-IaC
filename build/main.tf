# Terraform Config
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  required_version = "~> 1.4.6"

  backend "s3" {
    bucket = "grays-tf-remote-state"
    key    = "grays/ecr/terraform.tfstate"
    region = "us-east-1"
  }
}
# Provider Configuration
provider "aws" {
  region = var.aws_region
}

