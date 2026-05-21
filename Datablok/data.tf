/* data source black for VPC, VPC already created mnaully
or other method, we need to read that existing resource via data block>*/
data "aws_vpc" "exising-vpc" {
  id = var.vpc_id
}
# create a subnet using data block
resource "aws_subnet" "vpc01-subnet" {
    vpc_id = data.aws_vpc.exising-vpc.id
    cidr_block = var.subnet-ip-vpc01
    tags = {
        Name = var.sub-name
    }
}


/* now we created subnet, when we detstroy it will destroy only subnet
  But customer requested delete the existing VPC also, but our terrafrom state file
  doesnt have VPC related to data. so we need to export the VPC Information to Tfstate
  terraform import aws_vpc.vpc vpc-0de939260f54cf18a create a empty VPC resource block
  then import that vpc id into block. execute ( terraform import aws_vpc.vpc-import vpc-0de939260f54cf18a )*/
  resource "aws_vpc" "vpc-import" {
    
  }