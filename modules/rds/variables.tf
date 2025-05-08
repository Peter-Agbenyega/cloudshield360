# Database Username
variable "db_username" {
  description = "Username for the RDS database"
  type        = string
}

# Database Password
variable "db_password" {
  description = "Password for the RDS database"
  type        = string
}

# Private Subnet IDs
variable "private_subnet_ids" {
  description = "List of Private Subnet IDs for RDS Subnet Group"
  type        = list(string)
}

# VPC ID
variable "vpc_id" {
  description = "VPC ID where RDS will be created"
  type        = string
}

# Allowed CIDR Blocks for RDS Access
variable "allowed_cidr_blocks" {
  description = "CIDR blocks allowed to access RDS"
  type        = list(string)
}
