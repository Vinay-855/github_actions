resource "aws_vpc" "customvpc" {
  cidr_block = "10.10.0.0/16"

  tags = {
    "Name" = "Test-Custom-VPC"
  }
}

resource "aws_instance" "testEC2" {
  ami           = "ami-0aa7d40eeae50c9a9"
  instance_type = "t2.micro"
}
