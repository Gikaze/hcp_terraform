provider "aws" {}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  cloud {
    organization = "gikaze-org"

    workspaces {
      name = "hcp_terraform"
    }
  }

  required_version = ">= 1.9.0"
}

resource "aws_instance" "myinstance" {
  ami           = var.AMI
  instance_type = var.INSTANCE_TYPE

  tags = {
    Name = var.INSTANCE_NAME
    Type = "Private"
  }
}
