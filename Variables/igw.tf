# IGW01 creation block
resource "aws_internet_gateway" "IGW01" {
    vpc_id = aws_vpc.VPC01.id
    tags = {
        Name = "VPC01-IGW01"
    }

}

#IGW02 creation block
resource "aws_internet_gateway" "IGW02" {
    vpc_id = aws_vpc.VPC02.id
    tags = {
        Name = "VPC02-IGW01"
    }

}