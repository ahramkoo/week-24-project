#### Basic Information ####
  
# Provider Information
provider "aws" {
  region = "ap-northeast-2"
}

terraform {
  # Library 버전
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.20"
    }
    tls = {
      source = "hashicorp/tls"
    }
  }

  # Terraform 버전
  required_version = ">= 0.13"

  # State 저장용 S3 Backend 구성
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