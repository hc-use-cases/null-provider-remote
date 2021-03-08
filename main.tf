terraform {
  backend "remote" {
    organization = "popa-org"

    workspaces {
      name = "null-provider-remote"
    }
  }
}

resource "null_resource" "count" {
  count = 2
  triggers = {
    key = "value ${count.index}"
  }
}
