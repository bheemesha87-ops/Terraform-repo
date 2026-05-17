variable "ami_id" {
  type        = string
  default     = "ami-091138d0f0d41ff90"
  description = "AMI ID of Ubuntu machine"
}
variable "instance_type" {
    type = string
    default = "t3.micro"
}
variable "ec2_tags" {
  type = map(string)
  default = {
    Purpose = "Peering test"
  }
}
variable "key_name" {
    type = string
    default = "Bheema-linux01"
}
variable "iprange-VPC01" {
   default = "10.1.0.0/16"  
}
variable "VPC-Name01" {
    default = {
        Name = "Bheema-VPC01"
    }   
}
variable "iprange-VPC02" {
   default = "10.2.0.0/16"  
}
variable "VPC-Name02" {
   default = {
       Name = "Bheema-VPC02"
   }
    
}
variable "sub-vpc01-01" {
  default = "10.1.1.0/24"
}
variable "sub-vpc01-02" {
  default = "10.1.2.0/24"  
}
variable "sub-vpc02-01" {
  default = "10.2.1.0/24"
}
variable "sub-vpc02-02" {
  default = "10.2.2.0/24"  
}
variable "any-ip" {
  default = "0.0.0.0/0"
}