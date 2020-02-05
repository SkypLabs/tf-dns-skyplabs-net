# https://www.terraform.io/docs/configuration/terraform.html#terraform-block-syntax.
terraform {
  required_version = ">= 0.12.0"

  required_providers {
  }

  # https://www.terraform.io/docs/backends/types/remote.html.
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "SkypLabs"

    workspaces {
      name = "tf-dns-skyplabs-net"
    }
  }
}
