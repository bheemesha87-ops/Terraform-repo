#VPC Creation block
resource "aws_vpc" "VPC01" {
  cidr_block       =  var.iprange-vpc01
  tags = {
    Name = var.vpc01-name
  }
}
resource "aws_subnet" "subnet01-vpc01" {
    vpc_id = aws_vpc.VPC01.id
    cidr_block = var.sub-iprange-vpc01
  tags = {
    Name = var.sub-name-vpc01
  }
}