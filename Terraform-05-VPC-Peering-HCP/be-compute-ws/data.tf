data "terraform_remote_state" "be_network" {
  backend = "remote"
  config = {
    organization = "nwaynway-org"
    workspaces = {
      name = "be-network-ws"
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
