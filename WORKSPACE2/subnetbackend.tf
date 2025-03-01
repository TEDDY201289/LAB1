terraform {
  cloud {

    organization = "CNFP4-LAB"
    hostname     = "app.terraform.io"

    workspaces {
      name = "MY-SUNET1"
    }
  }
}