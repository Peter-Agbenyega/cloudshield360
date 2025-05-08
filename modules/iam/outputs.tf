# Output Instance Profile Name for EC2 Attachment
output "cloudshield360_instance_profile_name" {
  description = "Name of the IAM instance profile for EC2"
  value       = aws_iam_instance_profile.cloudshield360_instance_profile.name
}
