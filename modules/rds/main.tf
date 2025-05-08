# Create Security Group for RDS
resource "aws_security_group" "cloudshield360_rds_sg" {
  name        = "cloudshield360-rds-sg"
  description = "Allow database access"
  vpc_id      = var.vpc_id

  ingress {
    description = "PostgreSQL Access"
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "cloudshield360-rds-sg"
  }
}

# Create RDS Subnet Group
resource "aws_db_subnet_group" "cloudshield360_rds_subnet_group" {
  name       = "cloudshield360-rds-subnet-group"
  subnet_ids = var.private_subnet_ids

  tags = {
    Name = "cloudshield360-rds-subnet-group"
  }
}

# Create RDS Instance
resource "aws_db_instance" "cloudshield360_rds_instance" {
  identifier             = "cloudshield360-rds"
  engine                 = "postgres"
  engine_version         = "14.4"
  instance_class         = "db.t3.micro"
  allocated_storage      = 20
  db_subnet_group_name   = aws_db_subnet_group.cloudshield360_rds_subnet_group.name
  vpc_security_group_ids = [aws_security_group.cloudshield360_rds_sg.id]
  username               = var.db_username
  password               = var.db_password
  skip_final_snapshot    = true
  publicly_accessible    = false
  multi_az               = false

  tags = {
    Name = "cloudshield360-rds"
  }
}
