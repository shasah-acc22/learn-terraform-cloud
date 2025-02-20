terraform {

  cloud {
    organization = "accent-demo"

    workspaces {
      name = "learn-terraform-cloud"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.56.0"
    }
  }

  required_version = ">= 0.14.0"
}

provider "aws" {
  region = var.region
}
