# Output RDS Database Endpoint
output "cloudshield360_rds_endpoint" {
  description = "Endpoint of the RDS Database"
  value       = aws_db_instance.cloudshield360_rds_instance.endpoint
}

# Output RDS Database Identifier
output "cloudshield360_rds_identifier" {
  description = "Identifier of the RDS Database"
  value       = aws_db_instance.cloudshield360_rds_instance.id
}

# Output RDS Security Group ID
output "cloudshield360_rds_security_group_id" {
  description = "Security Group ID attached to RDS"
  value       = aws_security_group.cloudshield360_rds_sg.id
}
