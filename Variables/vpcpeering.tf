 resource "aws_vpc_peering_connection" "peer1-2" {
  peer_vpc_id   = aws_vpc.VPC02.id
  vpc_id        = aws_vpc.VPC01.id
  auto_accept   = true
  tags = {
    Name = "VPC PEERING between 1-2"
  }
} 
