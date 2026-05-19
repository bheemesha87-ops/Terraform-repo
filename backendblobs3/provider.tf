# Configure the AWS Provider
provider "aws" {
  #configuration options
}
terraform {
  backend "s3" {
    bucket = "bheema-s3-terraform"
    key    = "prod.tfstate"
    region = "us-east-1"
  }
}
