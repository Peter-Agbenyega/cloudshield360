variable "cloudshield360_vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "cloudshield360_vpc_name" {
  description = "Name for the VPC"
  type        = string
}

variable "cloudshield360_public_subnet_1_cidr" {
  description = "CIDR block for public subnet 1"
  type        = string
}

variable "cloudshield360_public_subnet_2_cidr" {
  description = "CIDR block for public subnet 2"
  type        = string
}

variable "cloudshield360_public_subnet_1_az" {
  description = "Availability Zone for public subnet 1"
  type        = string
}

variable "cloudshield360_public_subnet_2_az" {
  description = "Availability Zone for public subnet 2"
  type        = string
}
