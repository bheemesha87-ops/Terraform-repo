# configureing IGW Route to Default route table
resource "aws_default_route_table" "vpc01-drt" {
    default_route_table_id = aws_vpc.vpc01.default_route_table_id
    #creating route
    route {
    cidr_block = var.anytraffic
    gateway_id = aws_internet_gateway.IGW01.id
  }
  tags = {
    Name = var.defroute-name
  }
}