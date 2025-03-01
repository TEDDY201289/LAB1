data "terraform_remote_state" "MY-VPC" {
  backend = "remote"

  config = {
    organization = "CNFP4-LAB"
    workspaces = {
      name = "MY-VPC"
    }
  }
}

resource "aws_subnet" "MY-SUNET1" {
  vpc_id     = data.terraform_remote_state.MY-VPC.outputs.vpc_id
  cidr_block = "10.0.0.0/26"

  tags = {
    Name = "MY-VPC"
  }
}