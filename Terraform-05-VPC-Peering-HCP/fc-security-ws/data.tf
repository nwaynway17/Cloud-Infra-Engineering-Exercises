data "terraform_remote_state" "fc_network" {
  backend = "remote"
  config = {
    organization = "nwaynway-org"
    workspaces = {
      name = "fc-network-ws"
    }
  }
}

data "terraform_remote_state" "be_security" {
  backend = "remote"
  config = {
    organization = "nwaynway-org"
    workspaces = {
      name = "be-security-ws"
    }
  }
}

# Optional: uncomment only if you need backend VPC values (e.g. CIDR) in this workspace
# data "terraform_remote_state" "be_network" {
#   backend = "remote"
#   config = {
#     organization = "nwaynway-org"
#     workspaces = {
#       name = "be-network-ws"
#     }
#   }
# }
