output "vpc_id" {
  description = "Frontend VPC ID"
  value       = aws_vpc.frontend_vpc.id
}

output "vpc_cidr" {
  description = "Frontend VPC CIDR block"
  value       = aws_vpc.frontend_vpc.cidr_block
}

# Order: [0] = subnet01, [1] = subnet02, [2] = subnet03
output "public_subnet_ids" {
  description = "Frontend public subnet IDs"
  value = [
    aws_subnet.frontend_public_subnet01.id,
    aws_subnet.frontend_public_subnet02.id,
    aws_subnet.frontend_public_subnet03.id,
  ]
}

output "private_subnet_ids" {
  description = "Frontend private subnet IDs"
  value = [
    aws_subnet.frontend_private_subnet01.id,
    aws_subnet.frontend_private_subnet02.id,
    aws_subnet.frontend_private_subnet03.id,
  ]
}

output "public_route_table_id" {
  description = "Frontend public route table ID"
  value       = aws_route_table.frontend_public_rtb.id
}

# Order: [0] = rtb01, [1] = rtb02, [2] = rtb03
output "private_route_table_ids" {
  description = "Frontend private route table IDs"
  value = [
    aws_route_table.frontend_private_rtb01.id,
    aws_route_table.frontend_private_rtb02.id,
    aws_route_table.frontend_private_rtb03.id,
  ]
}

output "peering_connection_id" {
  description = "VPC peering connection ID (frontend <-> backend)"
  value       = aws_vpc_peering_connection.fevpc_peering_bevpc.id
}
