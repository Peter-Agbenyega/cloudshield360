module "cloudshield360_vpc" {
  source = "./modules/vpc"

  cloudshield360_vpc_cidr              = "10.0.0.0/16"
  cloudshield360_vpc_name              = "cloudshield360-vpc"
    cloudshield360_public_subnet_1_cidr  = "10.0.11.0/24"
  cloudshield360_public_subnet_2_cidr  = "10.0.12.0/24"
  cloudshield360_public_subnet_1_az    = "us-east-1a"
  cloudshield360_public_subnet_2_az    = "us-east-1b"
}


