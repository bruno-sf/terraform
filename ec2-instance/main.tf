terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0b0dcb5067f052a63" # Amazon Linux 2 Kernel 5.10 AMI 2.0.20221103.3 x86_64 HVM gp2
  instance_type = "t1.micro"

  tags = {
    Name = var.instance_name
    Desc = "My EC2 instance for network troubleshooting purpose"
  }
}
