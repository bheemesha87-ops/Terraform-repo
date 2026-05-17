resource "aws_instance" "SRV01" {
   ami = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_default_security_group.sg-vpc01.id ]
  tags = var.ec2_tags
  key_name = var.key_name
  subnet_id = aws_subnet.subnet01.id
  associate_public_ip_address = "true"
  
} 
resource "aws_instance" "SRV02" {
   ami = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_default_security_group.sg-vpc02.id ]
  tags = var.ec2_tags
  key_name = var.key_name
  subnet_id = aws_subnet.subnet01-VPC02.id
  associate_public_ip_address = "true"
} 