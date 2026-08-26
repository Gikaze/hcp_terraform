provider "aws" {
  region = "eu-west-1"
}

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

resource "aws_key_pair" "instance_key_pair" {
  key_name   = "instance_key_pair"
  public_key = var.PATH_TO_PUBLIC_KEY
}

resource "aws_instance" "myinstance" {
  ami                    = var.AMI
  instance_type          = var.INSTANCE_TYPE
  key_name               = aws_key_pair.instance_key_pair.key_name
  vpc_security_group_ids = [aws_security_group.instance-allow-sg]

  tags = {
    Name = var.INSTANCE_NAME
    Type = var.TYPE
  }
}
