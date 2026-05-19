#instance creation block
resource "aws_instance" "srv01-pub" {
  ami           = var.ami_id
  instance_type = var.type-VM
  subnet_id = aws_subnet.subnet01-pub.id
  associate_public_ip_address = "true"
  key_name = "Bheema-linux01"

  tags = {
    Name = "SRV01"
  }
}
resource "aws_instance" "srv02-pvt" {
  ami           = var.ami_id
  instance_type = var.type-VM
  subnet_id = aws_subnet.subnet02-pvt.id
  key_name = "Bheema-linux01"

  tags = {
    Name = "SRV02"
  }
}