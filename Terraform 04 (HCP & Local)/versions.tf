terraform {
  cloud {
    organization = "nwaynway-org"
    hostname     = "app.terraform.io"

    workspaces {
      name = "random_string-ws"
    }
  }
}


