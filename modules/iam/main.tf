# IAM Role for EC2 Instances
resource "aws_iam_role" "cloudshield360_ec2_role" {
  name = "cloudshield360-ec2-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "ec2.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })

  tags = {
    Name = "cloudshield360-ec2-role"
  }
}

# IAM Policy to Allow EC2 Instances to Access S3 and CloudWatch
resource "aws_iam_policy" "cloudshield360_ec2_policy" {
  name        = "cloudshield360-ec2-policy"
  description = "Allow access to S3 and CloudWatch Logs"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Action = [
          "s3:*",
          "logs:*"
        ],
        Resource = "*"
      }
    ]
  })
}

# Attach Policy to Role
resource "aws_iam_role_policy_attachment" "cloudshield360_ec2_attach" {
  role       = aws_iam_role.cloudshield360_ec2_role.name
  policy_arn = aws_iam_policy.cloudshield360_ec2_policy.arn
}

# IAM Instance Profile for EC2
resource "aws_iam_instance_profile" "cloudshield360_instance_profile" {
  name = "cloudshield360-instance-profile"
  role = aws_iam_role.cloudshield360_ec2_role.name
}