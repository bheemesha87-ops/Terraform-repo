/* resource "aws_instance" "SRV01" {
   ami = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.allow_all.id ]
  tags = var.ec2_tags
  key_name = var.key_name
}

resource "aws_security_group" "allow_all"{
    name = var.SG_name
    description = var.SG_description
    tags = var.Sg_tags

    ingress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }
    egress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }

}
 */