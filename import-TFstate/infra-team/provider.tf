# configuration of aws provider
provider "aws" {
    #configuration options like account and region.
  
}
#s3 backend block for tfstate file
terraform {
  backend "s3" {
    bucket = "bheema-s3-terraform"
    key    = "prod.tfstate"
    region = "us-east-1"
  }
}
