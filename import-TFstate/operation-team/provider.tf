# configuration of aws provider
provider "aws" {
    #configuration options like account and region.
  
}
# reading data from remote location tfstte
data "terraform_remote_state" "state" {
  backend = "s3"
  config = {
    bucket = "bheema-s3-terraform"
    key    = "prod.tfstate"
    region = "us-east-1"
  }
}

#s3 backend block for tfstate file for infra team
terraform {
  backend "s3" {
    bucket = "bheema-s3-infrateam"
    key    = "infra.tfstate"
    region = "us-east-1"
  }
}