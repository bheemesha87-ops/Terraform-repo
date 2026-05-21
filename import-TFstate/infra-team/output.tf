output "vpc01_id" {
    value = aws_vpc.vpc01.id  
}
output "subnet01_id" {
    value = aws_subnet.subnet01-pub.id
}

output "routetable_id" {
    value = aws_default_route_table.vpc01-drt.id
}

output "securitygroup_id" {
    value = aws_default_security_group.SG-VPC01.id
}
