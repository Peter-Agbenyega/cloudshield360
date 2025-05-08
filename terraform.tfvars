# VPC Variables
cloudshield360_vpc_cidr         = "10.0.0.0/16"
cloudshield360_vpc_name         = "cloudshield360-vpc"
cloudshield360_public_subnet_cidr = "10.0.1.0/24"
cloudshield360_public_subnet_az   = "us-east-1a"

# EC2 Variables
ami_id        = "ami-0c55b159cbfafe1f0" # Example Amazon Linux AMI ID (change if needed)
instance_type = "t2.micro"

# RDS Variables
db_username   = "adminuser"
db_password   = "supersecretpassword123"
