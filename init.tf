terraform {
  required_version = ">= 0.12"
  backend "s3" {
    bucket = "terraform-state-bucket"
    key    = "path/to/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}
