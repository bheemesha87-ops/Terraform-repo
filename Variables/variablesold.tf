/* variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "AMI ID of Ubuntu machine"
}
variable "instance_type" {
    type = string
    default = "t3.micro"
}
variable "ec2_tags" {
  type = map(string)
  default = {
    Name = "SRV01"
    Purpose = "Peering test"
  }
}
variable "key_name" {
    type = string
    default = "Bheema-linux01"
  
}
variable "SG_name" {
   type = string
   default = "allow_all"
}
variable "SG_description" {
    type = string
    default = "Allowing traffic to all  ports"
}
variable "Sg_tags" {
    type = map(string)
    default = {
      Name = "Allow_all"
    }
  
}
variable "from_port" {
  type = number
  default = 0
}
variable "to_port" {
    type = number
    default = 0
  
}
variable "cidr_blocks" {
    type = list(string)
    default = [ "0.0.0.0/0" ]
  
}
 */