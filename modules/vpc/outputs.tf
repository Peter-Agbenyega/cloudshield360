output "public_subnet_1_id" {
  value = aws_subnet.cloudshield360_public_subnet_1.id
}

output "public_subnet_2_id" {
  value = aws_subnet.cloudshield360_public_subnet_2.id
}

output "vpc_id" {
  value = aws_vpc.cloudshield360_vpc.id
}
