# Create the VPC
resource "aws_vpc" "cloudshield360_vpc" {
  cidr_block = var.cloudshield360_vpc_cidr

  tags = {
    Name = var.cloudshield360_vpc_name
  }
}

# Create Internet Gateway
resource "aws_internet_gateway" "cloudshield360_igw" {
  vpc_id = aws_vpc.cloudshield360_vpc.id

  tags = {
    Name = "${var.cloudshield360_vpc_name}-igw"
  }
}

# Create Public Subnet
resource "aws_subnet" "cloudshield360_public_subnet" {
  vpc_id                  = aws_vpc.cloudshield360_vpc.id
  cidr_block              = var.cloudshield360_public_subnet_cidr
  availability_zone       = var.cloudshield360_public_subnet_az
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.cloudshield360_vpc_name}-public-subnet"
  }
}

# Create Route Table
resource "aws_route_table" "cloudshield360_public_rt" {
  vpc_id = aws_vpc.cloudshield360_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.cloudshield360_igw.id
  }

  tags = {
    Name = "${var.cloudshield360_vpc_name}-public-rt"
  }
}

# Associate Route Table with Public Subnet
resource "aws_route_table_association" "cloudshield360_public_association" {
  subnet_id      = aws_subnet.cloudshield360_public_subnet.id
  route_table_id = aws_route_table.cloudshield360_public_rt.id
}