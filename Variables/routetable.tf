#Adding route to access resources from Internet gateway
resource "aws_default_route_table" "VPC1-RT" {
  default_route_table_id = aws_vpc.VPC01.default_route_table_id

  route {
    cidr_block = var.any-ip
    gateway_id = aws_internet_gateway.IGW01.id
  }
  route {
    cidr_block = aws_vpc.VPC02.cidr_block
    gateway_id = aws_vpc_peering_connection.peer1-2.id
  }
 
  tags = {
    Name = "Default-RT-VPC01"
  }
}

resource "aws_default_route_table" "VPC02-RT" {
  default_route_table_id = aws_vpc.VPC02.default_route_table_id

route {
    cidr_block = var.any-ip
    gateway_id = aws_internet_gateway.IGW02.id
  }
 route {
    cidr_block = aws_vpc.VPC01.cidr_block
    gateway_id = aws_vpc_peering_connection.peer1-2.id
  }
  tags = {
    Name = "Default-Route-VPC02"
  }
}