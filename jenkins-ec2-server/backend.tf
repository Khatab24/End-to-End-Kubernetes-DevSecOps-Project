terraform {
  backend "s3" {
    bucket         = "my-end-to-end-bucket"
    region         = "us-east-1"
    key            = "End-to-End-Kubernetes-DevSecOps-Tetris-Project/ec2/terraform.tfstate"
    dynamodb_table = "terraform-Lock-Files"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}