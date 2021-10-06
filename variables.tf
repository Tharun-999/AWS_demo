variable "aws" {
  default = "us-east-1"
  description = "AWS_Region"
}
variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
  description = "VPC CIDR Block"
}
variable "public_subnet_cidr_block" {
  default = "10.0.1.0/24"
  description = "Public Subnet CIDR Block"
}

variable "private_subnet_cidr_block" {
  default = "10.0.4.0/24"
  description = "Private Subnet CIDR Block"
}
