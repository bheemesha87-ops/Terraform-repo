# Displaying vpc id as output
output "vpcid01" {
    value = data.aws_vpc.exising-vpc.id
}

# Displaying vpc CIDR as output
output "vpc_ip" {
    value = data.aws_vpc.exising-vpc.cidr_block
}
# Displaying vpc main route table as output
output "vpc_rtid" {
    value = data.aws_vpc.exising-vpc.main_route_table_id
  
}