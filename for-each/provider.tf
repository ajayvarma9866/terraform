terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "devops9866-remote-state"
    key    = "expense-for-loop"
    region = "us-east-1"
    dynamodb_table = "devops9866-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}