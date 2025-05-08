# AMI ID for EC2 Instances
variable "ami_id" {
  description = "AMI ID for launching EC2 instances"
  type        = string
}

# Instance Type
variable "instance_type" {
  description = "Type of EC2 instances (e.g., t2.micro)"
  type        = string
}

# Public Subnet ID
variable "public_subnet_id" {
  description = "Subnet ID for Public EC2 Instance"
  type        = string
}

# Private Subnet ID
variable "private_subnet_id" {
  description = "Subnet ID for Private EC2 Instance"
  type        = string
}

# VPC ID
variable "vpc_id" {
  description = "VPC ID where instances will be launched"
  type        = string
}
