resource "aws_instance" "vcube01" {
   ami = "ami-0236922087fa98b6e"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ aws_security_group.allow_all.id ]
  tags = {
    Name = "VCUBE_VM01"
  }
}

resource "aws_security_group" "allow_all"{
    name = "allow_all"
    description = "allow all traffic"
    tags ={
        Name = "allow_all"
    }

    ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

}
