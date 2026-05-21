variable "iprange-vpc01" {
      type = string
      default = "10.1.0.0/16"
}
variable "vpc01-name" {
    type = string
    default = "Bheema-VPC01"
}
variable "subnet01-pub" {
    type = string
    default = "10.1.1.0/24"
}
variable "subnet01-pub-name" {
    type = string
    default = "Bheema-vpc01-publicsubnet"
}
variable "vpc01-gatewayname" {
    type = string
    default = "Bheema-vpc01-IGW01"
}
variable "anytraffic" {
    type = string
    default = "0.0.0.0/0"
}
variable "pvt-route-name" {
    type = string
    default = "Bheema-vpc01-pvt-route"
  
}
variable "defroute-name" {
    type = string
    default = "Bheema-vpc01-default-route"  
}