resource "aws_default_security_group" "sg-vpc01" {
  vpc_id = aws_vpc.VPC01.id

  ingress {
    protocol  = -1
    from_port = 0
    to_port   = 0
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "VPC01-ALLOW_ALL"
  }
}
resource "aws_default_security_group" "sg-vpc02" {
  vpc_id = aws_vpc.VPC02.id

  ingress {
    protocol  = -1
    from_port = 0
    to_port   = 0
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "VPC02-ALLOW_ALL"
  }
}