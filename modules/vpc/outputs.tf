# Output VPC ID
output "cloudshield360_vpc_id" {
  description = "ID of the CloudShield360 VPC"
  value       = aws_vpc.cloudshield360_vpc.id
}

# Output Public Subnet ID
output "cloudshield360_public_subnet_id" {
  description = "ID of the CloudShield360 Public Subnet"
  value       = aws_subnet.cloudshield360_public_subnet.id
}

# Output Internet Gateway ID
output "cloudshield360_internet_gateway_id" {
  description = "ID of the CloudShield360 Internet Gateway"
  value       = aws_internet_gateway.cloudshield360_igw.id
}

# Output Route Table ID
output "cloudshield360_public_route_table_id" {
  description = "ID of the CloudShield360 Public Route Table"
  value       = aws_route_table.cloudshield360_public_rt.id
}
