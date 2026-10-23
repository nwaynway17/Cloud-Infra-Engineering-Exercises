output "vpc_id" {
  description = "Backend VPC ID"
  value       = aws_vpc.backend_vpc.id
}

output "vpc_cidr" {
  description = "Backend VPC CIDR block"
  value       = aws_vpc.backend_vpc.cidr_block
}

# Order: [0] = subnet01, [1] = subnet02, [2] = subnet03
output "public_subnet_ids" {
  description = "Backend public subnet IDs"
  value = [
    aws_subnet.backend_public_subnet01.id,
    aws_subnet.backend_public_subnet02.id,
    aws_subnet.backend_public_subnet03.id,
  ]
}

output "private_subnet_ids" {
  description = "Backend private subnet IDs"
  value = [
    aws_subnet.backend_private_subnet01.id,
    aws_subnet.backend_private_subnet02.id,
    aws_subnet.backend_private_subnet03.id,
  ]
}

output "public_route_table_id" {
  description = "Backend public route table ID"
  value       = aws_route_table.backend_public_rtb.id
}

# Order: [0] = rtb01, [1] = rtb02, [2] = rtb03
output "private_route_table_ids" {
  description = "Backend private route table IDs (used by the peering routes)"
  value = [
    aws_route_table.backend_private_rtb01.id,
    aws_route_table.backend_private_rtb02.id,
    aws_route_table.backend_private_rtb03.id,
  ]
}
