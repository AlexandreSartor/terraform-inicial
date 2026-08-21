terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }

  required_version = ">= 1.0"
}

provider "local" {}

resource "local_file" "exemplo" {
  filename = "${path.module}/exemplo.txt"
  content  = "Meu primeiro projeto com Terraform!"
}
