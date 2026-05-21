#assing the existing vpc id in vairable block
variable "vpc_id" {
    default = "vpc-0de939260f54cf18a"
}
variable "subnet-ip-vpc01" {
     type = string
     default = "10.1.1.0/24"
}
variable "sub-name" {
    type = string
    default = "PVT-SUB-01"
}