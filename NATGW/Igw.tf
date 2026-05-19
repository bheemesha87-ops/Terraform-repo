# internet gateway block
resource "aws_internet_gateway" "IGW01" {
    vpc_id = aws_vpc.vpc01.id
    tags = {
      Name = var.vpc01-gatewayname
    }
}