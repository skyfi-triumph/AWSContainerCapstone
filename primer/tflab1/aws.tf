terraform {
  #required_version = "~> 0.14.3"
  required_version = "~> 1.2.4"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #  Allow 3.39  version of the AWS provider
      version = "= 3.39"
    }
  }
}

provider "aws" {
  region                  = var.region
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "skyler"
}

variable "region" {
  description = "The name of the AWS Region"
  type        = string
  default     = "us-east-1"
}


