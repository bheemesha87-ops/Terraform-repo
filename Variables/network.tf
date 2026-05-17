# VPC01 Creation block
resource "aws_vpc" "VPC01" {
    cidr_block = var.iprange-VPC01
    tags = var.VPC-Name01
}

# subnet cretaion block
resource "aws_subnet" "subnet01" {
    vpc_id = aws_vpc.VPC01.id
    cidr_block = var.sub-vpc01-01
    tags = {
      Name = "Pub-subnet-VPC01"
    }
  
}

#subnet2 cretaion block
resource "aws_subnet" "subnet02" {
    vpc_id = aws_vpc.VPC01.id
    cidr_block = var.sub-vpc01-02
    tags = {
      Name = "Pvt-subnet-VPC01"
    }
  
}

#VPC02 creation block
resource "aws_vpc" "VPC02" {
    cidr_block = var.iprange-VPC02
    tags = var.VPC-Name02
}

# subnet cretaion block
resource "aws_subnet" "subnet01-VPC02" {
    vpc_id = aws_vpc.VPC02.id
    cidr_block = var.sub-vpc02-01
    tags = {
      Name = "Pub-subnet-VPC02"
    }
  
}

#subnet2 cretaion block
resource "aws_subnet" "subnet02-VPC02" {
    vpc_id = aws_vpc.VPC02.id
    cidr_block = var.sub-vpc02-02
    tags = {
      Name = "Pvt-subnet-VPC02"
    }
  
}


