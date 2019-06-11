resource "aws_vpc" "mile12" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "mile12-VPC"
  }
}

resource "aws_subnet" "HR_Dept" {
    cidr_block = "${cidrsubnet(aws_vpc.mile12.cidr_block, 3, 1)}"
    vpc_id = "${aws_vpc.mile12.id}"
    availability_zone = "us-east-1a"
}