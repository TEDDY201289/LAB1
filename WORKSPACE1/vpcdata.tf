resource "aws_vpc" "MY-VPC" {
  cidr_block = "10.0.0.0/24"
  tags = {
    Name = "MY-VPC"
  }
}

