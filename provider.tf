provider "aws" {
    alias       = "us-west-1"
    region      = "us-west-1"
    access_key  = var.aws_access_key
    secret_key  = var.aws_secret_key 
}

provider "aws" {
    alias       = "eu-central-1"
    region      = "eu-central-1"
    access_key  = var.aws_access_key
    secret_key  = var.aws_secret_key 
}

terraform {
    backend "s3" {
      bucket = "nick-pope-terraform-scenario-backend"
      key    = "terraform/partsunlimited"
      region = "us-west-1"
    }

    required_providers{
        aws = "~> 2.7"
    }
}