# versions.tf
terraform {
  required_version = ">= 1.16.6"

  cloud {
    organization = "nwaynway-org"
    workspaces {
      name = "fc-security-ws" 
      project = "vpc-peering-pov"    # changes in every folder
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}