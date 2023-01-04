resource "aws_vpc" "customvpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    "Name" = "Dev-Env-VPC"
  }
}