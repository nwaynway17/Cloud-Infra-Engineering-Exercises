# Cross rules that attach to the BACKEND security groups but reference FRONTEND groups.
# They live in this workspace because be-security-ws cannot read fc-security-ws (that would be a loop).

resource "aws_vpc_security_group_ingress_rule" "be_private_sg02_allow_ssh_from_fe_private_sg02" {
  security_group_id            = data.terraform_remote_state.be_security.outputs.private_sg02_id
  referenced_security_group_id = aws_security_group.fe_private_sg02.id
  from_port                    = 22
  ip_protocol                  = "tcp"
  to_port                      = 22
}

resource "aws_vpc_security_group_ingress_rule" "be_private_sg02_allow_icmp_from_fe_private_sg02" {
  security_group_id            = data.terraform_remote_state.be_security.outputs.private_sg02_id
  referenced_security_group_id = aws_security_group.fe_private_sg02.id
  from_port                    = 8
  ip_protocol                  = "icmp"
  to_port                      = 0
}

resource "aws_vpc_security_group_egress_rule" "be_private_sg02_allow_ssh_to_fe_private_sg02" {
  security_group_id            = data.terraform_remote_state.be_security.outputs.private_sg02_id
  referenced_security_group_id = aws_security_group.fe_private_sg02.id
  from_port                    = 22
  ip_protocol                  = "tcp"
  to_port                      = 22
}

resource "aws_vpc_security_group_egress_rule" "be_private_sg02_allow_icmp_to_fe_private_sg02" {
  security_group_id            = data.terraform_remote_state.be_security.outputs.private_sg02_id
  referenced_security_group_id = aws_security_group.fe_private_sg02.id
  from_port                    = 8
  ip_protocol                  = "icmp"
  to_port                      = 0
}

resource "aws_vpc_security_group_ingress_rule" "be_private_sg03_allow_ssh_from_fe_private_sg03" {
  security_group_id            = data.terraform_remote_state.be_security.outputs.private_sg03_id
  referenced_security_group_id = aws_security_group.fe_private_sg03.id
  from_port                    = 22
  ip_protocol                  = "tcp"
  to_port                      = 22
}

resource "aws_vpc_security_group_ingress_rule" "be_private_sg03_allow_icmp_from_fe_private_sg03" {
  security_group_id            = data.terraform_remote_state.be_security.outputs.private_sg03_id
  referenced_security_group_id = aws_security_group.fe_private_sg03.id
  from_port                    = 8
  ip_protocol                  = "icmp"
  to_port                      = 0
}

resource "aws_vpc_security_group_egress_rule" "be_private_sg03_allow_ssh_to_fe_private_sg03" {
  security_group_id            = data.terraform_remote_state.be_security.outputs.private_sg03_id
  referenced_security_group_id = aws_security_group.fe_private_sg03.id
  from_port                    = 22
  ip_protocol                  = "tcp"
  to_port                      = 22
}

resource "aws_vpc_security_group_egress_rule" "be_private_sg03_allow_icmp_to_fe_private_sg03" {
  security_group_id            = data.terraform_remote_state.be_security.outputs.private_sg03_id
  referenced_security_group_id = aws_security_group.fe_private_sg03.id
  from_port                    = 8
  ip_protocol                  = "icmp"
  to_port                      = 0
}
