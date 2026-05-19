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
#creating route for private subnet
resource "aws_route_table" "pvt-rt-vpc01" {
  vpc_id = aws_vpc.vpc01.id
  #if you didnt specify any route, automatically VPC local route will be assigned this route as well
  #route to provide the interent to pvt subnet
  route {
    cidr_block = var.anytraffic
    nat_gateway_id = aws_nat_gateway.BheemNAT.id
  }

  tags = {
    Name = var.pvt-route-name
  }
}
# private route subnet association to pvt subnet
resource "aws_route_table_association" "pvt-association" {
  subnet_id      = aws_subnet.subnet02-pvt.id
  route_table_id = aws_route_table.pvt-rt-vpc01.id
}