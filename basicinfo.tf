#### Basic Information ####
  
# Provider Information
provider "aws" {
  region = "ap-northeast-2"
}

terraform {
  # Library ����
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.20"
    }
    tls = {
      source = "hashicorp/tls"
    }
  }

  # Terraform ����
  required_version = ">= 0.13"

  # State ����� S3 Backend ����
  backend "s3" {
    bucket = "ahram-s3"
    key    = "aws-an2/ahram200/terraform.tfstate"
    region = "ap-northeast-2"
    dynamodb_table = "table-ahram200-test"
    encrypt = true
  }
}

#### Remote State Data Source ####
data "aws_availability_zones" "all" {}