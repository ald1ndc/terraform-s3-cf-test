terraform {
    required_version = ">= 1.6"
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.31.0"
    }
  }
  # cloud {
  #   organization = "aldin-org"

  #   workspaces {
  #     name = "cloudfront-s3-ndev"
  #   }
  # }
}