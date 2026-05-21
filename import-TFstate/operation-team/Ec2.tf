# ec2 instance creation
resource "aws_instance" "Srv01" {
   ami           = "ami-091138d0f0d41ff90"
  instance_type = "t3.micro"
  subnet_id = data.terraform_remote_state.state.outputs.subnet01_id
  key_name = "Bheema-linux01"
  associate_public_ip_address = true

  tags = {
   Name = "SRV01"
  }
}