resource "aws_vpc" "mile12" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "mile12-VPC"
  }
}

