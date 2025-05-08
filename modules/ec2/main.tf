# Create Security Group for Public EC2 Instance
resource "aws_security_group" "cloudshield360_public_sg" {
  name        = "cloudshield360-public-sg"
  description = "Allow SSH access to public instance"
  vpc_id      = var.vpc_id

  ingress {
    description = "SSH from anywhere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "cloudshield360-public-sg"
  }
}

# Create Public EC2 Instance
resource "aws_instance" "cloudshield360_public_ec2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.public_subnet_id
  security_groups        = [aws_security_group.cloudshield360_public_sg.id]
  associate_public_ip_address = true

  tags = {
    Name = "cloudshield360-public-ec2"
  }
}

# Create Private EC2 Instance (No Public IP)
resource "aws_instance" "cloudshield360_private_ec2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.private_subnet_id
  vpc_security_group_ids = [aws_security_group.cloudshield360_public_sg.id]
  associate_public_ip_address = false

  tags = {
    Name = "cloudshield360-private-ec2"
  }
}
