# Root Variables for CloudShield360

# VPC Variables
variable "cloudshield360_vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "cloudshield360_vpc_name" {
  description = "Name tag for the VPC"
  type        = string
}

variable "cloudshield360_public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "cloudshield360_public_subnet_az" {
  description = "Availability Zone for public subnet"
  type        = string
}

# EC2 Variables
variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "Instance type for EC2 instances"
  type        = string
}

# RDS Variables
variable "db_username" {
  description = "Database username for RDS"
  type        = string
}

variable "db_password" {
  description = "Database password for RDS"
  type        = string
}
