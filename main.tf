# Root Main.tf for CloudShield360
module "cloudshield360_vpc" {
  source = "./modules/vpc"
  cloudshield360_vpc_cidr           = var.cloudshield360_vpc_cidr
  cloudshield360_vpc_name           = var.cloudshield360_vpc_name
  cloudshield360_public_subnet_cidr = var.cloudshield360_public_subnet_cidr
  cloudshield360_public_subnet_az   = var.cloudshield360_public_subnet_az
}

# EC2 Module for CloudShield360
module "cloudshield360_ec2" {
  source = "./modules/ec2"

  ami_id             = var.ami_id
  instance_type      = var.instance_type
  public_subnet_id   = module.cloudshield360_vpc.cloudshield360_public_subnet_id
  private_subnet_id  = module.cloudshield360_vpc.cloudshield360_public_subnet_id
  vpc_id             = module.cloudshield360_vpc.cloudshield360_vpc_id
}


# IAM Module for CloudShield360
module "cloudshield360_iam" {
  source = "./modules/iam"
}

# RDS Module for CloudShield360
module "cloudshield360_rds" {
  source = "./modules/rds"

  db_username         = var.db_username
  db_password         = var.db_password
  private_subnet_ids  = module.cloudshield360_vpc.cloudshield360_public_subnet_id == "" ? [] : [module.cloudshield360_vpc.cloudshield360_public_subnet_id]
  vpc_id              = module.cloudshield360_vpc.cloudshield360_vpc_id
  allowed_cidr_blocks = ["0.0.0.0/0"]
}


