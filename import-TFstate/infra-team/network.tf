# VPC Creation block
resource "aws_vpc" "vpc01" {
    cidr_block = var.iprange-vpc01
    tags = {
      Name = var.vpc01-name
    }
}
# subnet creation block
resource "aws_subnet" "subnet01-pub" {
    vpc_id = aws_vpc.vpc01.id
    cidr_block = var.subnet01-pub
    tags = {
      Name = var.subnet01-pub-name
    }
}