# Public EC2 Instance ID
output "cloudshield360_public_ec2_id" {
  description = "ID of the CloudShield360 Public EC2 Instance"
  value       = aws_instance.cloudshield360_public_ec2.id
}

# Private EC2 Instance ID
output "cloudshield360_private_ec2_id" {
  description = "ID of the CloudShield360 Private EC2 Instance"
  value       = aws_instance.cloudshield360_private_ec2.id
}
