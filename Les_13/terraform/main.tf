terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.5"
    }
  }
  backend "s3" {
    bucket = "terraform-state-bella-devopslessons" # please specify your bucket name
    key    = "AKIAU6GD3IW6RYQTUV2C"                # please specify your key name
    region = "us-east-1"
  }
  required_version = ">= 1.7"
}

provider "aws" {
  region = "us-east-1"
}

#My change 

