data "terraform_remote_state" "fc_network" {
  backend = "remote"
  config = {
    organization = "nwaynway-org"
    workspaces = {
      name = "fc-network-ws"
    }
  }
}

data "terraform_remote_state" "fc_security" {
  backend = "remote"
  config = {
    organization = "nwaynway-org"
    workspaces = {
      name = "fc-security-ws"
    }
  }
}
