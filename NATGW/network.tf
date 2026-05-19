# VPC Creation block
resource "aws_vpc" "vpc01" {
    cidr_block = var.iprange-vpc01
    tags = {
      Name = var.vpc01-name
    }
}
# Public subnet creation block
resource "aws_subnet" "subnet01-pub" {
    vpc_id = aws_vpc.vpc01.id
    cidr_block = var.subnet01-pub
    tags = {
      Name = var.subnet01-pub-name
    }
}

#Private subnet creation block
resource "aws_subnet" "subnet02-pvt" {
    vpc_id = aws_vpc.vpc01.id
    cidr_block = var.subnet02-pvt
    tags = {
      Name = var.subnet02-pvt-name
    }
}