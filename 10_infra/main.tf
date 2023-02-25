# ---------------------------------------------
# Terraform configuration
# ---------------------------------------------
terraform {
  required_version = ">=0.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket  = "bluesnake1021-terraform-bucket"
    key     = "bluesnake1021-terraform-dev.tfstate"
    region  = "ap-northeast-1"
    profile = "bluesnake1021-terraform"
  }
}

# ---------------------------------------------
# Provider
# ---------------------------------------------
provider "aws" {
  profile = "bluesnake1021-terraform"
  region  = "ap-northeast-1"
}

provider "aws" {
  alias   = "virginia"
  profile = "bluesnake1021-terraform"
  region  = "us-east-1"
}
