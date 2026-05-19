resource "aws_default_security_group" "SG-VPC01" {
  vpc_id = aws_vpc.vpc01.id

  ingress {
    protocol  = -1
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 0
    to_port   = 0
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "DefaultSGVPC01"
  }
}