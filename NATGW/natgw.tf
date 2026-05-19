#To create NAT gateway we need to specify Elastic ip address and VPC ID
resource "aws_nat_gateway" "BheemNAT" {
  allocation_id = aws_eip.eip-nat.id
  subnet_id     = aws_subnet.subnet01-pub.id

  tags = {
    Name = var.NATGW-name
  }

}