provider "aws" {
  region     = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket = "st-terraform-state"
    key    = "terraform.state"
    region     = "eu-west-1"
  }
}
