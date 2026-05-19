# Static public ip address allocation
resource "aws_eip" "eip-nat" {
  domain   = "vpc"
}