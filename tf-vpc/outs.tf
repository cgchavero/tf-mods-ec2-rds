output "vpc_id" {
    description = "The ID of the VPC"
    value = aws_vpc.main.id
}

output "public_subnet_id" {
    description = "ID of the public subnet"
    value = aws_subnet.public.id
}

output "private_subnet_id_1" {
    description = "ID of the private subnet"
    value = aws_subnet.private_1.id
}

output "private_subnet_id_2" {
    description = "ID of the private subnet"
    value = aws_subnet.private_2.id
}

output "aws_nat_gateway_id" {
    description = "ID of the nat gateway"
    value = aws_nat_gateway.nat.id
}
