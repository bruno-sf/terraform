/*
What this recipe will create:
 - a main vpc (non default);
 - 6 subnets(2 pub, 2 priv, 2 data) in diferrents AZ's;
 - 1 internet gateway;
*/
resource "aws_vpc" "main_vpc" {
  cidr_block = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support = true

  tags = {
    Name = "vpc_${var.environment}_${var.region}"
    Owner = "${var.owner}"
    Department = "${var.department}"
    Description = "${var.description}"
  }
}