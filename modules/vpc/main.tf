resource "aws_vpc" "cloudshield360_vpc" {
  cidr_block = var.cloudshield360_vpc_cidr

  tags = {
    Name = var.cloudshield360_vpc_name
  }
}

resource "aws_subnet" "cloudshield360_public_subnet_1" {
  vpc_id            = aws_vpc.cloudshield360_vpc.id
  cidr_block        = var.cloudshield360_public_subnet_1_cidr
  availability_zone = var.cloudshield360_public_subnet_1_az
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.cloudshield360_vpc_name}-public-subnet-1"
  }
}

resource "aws_subnet" "cloudshield360_public_subnet_2" {
  vpc_id            = aws_vpc.cloudshield360_vpc.id
  cidr_block        = var.cloudshield360_public_subnet_2_cidr
  availability_zone = var.cloudshield360_public_subnet_2_az
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.cloudshield360_vpc_name}-public-subnet-2"
  }
}
