# CIDR Block for VPC
variable "cloudshield360_vpc_cidr" {
  description = "CIDR block for the CloudShield360 VPC"
  type        = string
}

# VPC Name
variable "cloudshield360_vpc_name" {
  description = "Name tag for the CloudShield360 VPC"
  type        = string
}

# Public Subnet CIDR
variable "cloudshield360_public_subnet_cidr" {
  description = "CIDR block for the CloudShield360 Public Subnet"
  type        = string
}

# Public Subnet Availability Zone
variable "cloudshield360_public_subnet_az" {
  description = "Availability Zone for the CloudShield360 Public Subnet"
  type        = string
}