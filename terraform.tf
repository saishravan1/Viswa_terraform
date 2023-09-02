terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.13.0"
    }
  }
  backend "s3" {
    bucket = "viswaterraformbucket-statefile/terraform-statefile/"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}



  