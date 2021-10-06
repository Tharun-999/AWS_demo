terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}
 resource "aws_vpc" "module_vpc" {
    cidr_block = var.vpc_cidr_block
  }
  resource "aws_subnet" "public_subnet" {
    cidr_block = var.public_subnet_cidr_block
    vpc_id     = aws_vpc.module_vpc.id
  }
  resource "aws_subnet" "private_subnet" {
    cidr_block = var.private_subnet_cidr_block
    vpc_id     = aws_vpc.module_vpc.id
  }



