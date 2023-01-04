resource "aws_vpc" "customvpc" {
  cidr_block = "10.10.10.0/16"

  tags = {
    "Name" = "Test-Custom-VPC"
  }
}
