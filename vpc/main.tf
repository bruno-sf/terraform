/*
Basically this will create a main vpc with 6 subnets(2 pub, 2 priv, 2 data) in diferrents AZ`s, with one internet gateway
*/
resource "aws_vpc" "main_vpc" {
  cidr_block = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support = true

  tags = {
    Name = "VPC_${var.environment}_${var.region}"
  }
}