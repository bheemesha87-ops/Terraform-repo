#VPC Creation block
resource "aws_vpc" "VPC01" {
  cidr_block       =  var.iprange-vpc01
  tags = {
    Name = var.vpc01-name
  }
}