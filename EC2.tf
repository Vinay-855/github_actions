resource "aws_vpc" "customvpc" {
  cidr_block = "10.10.0.0/16"

  tags = {
    "Name" = "${var.app_name}-VPC"
    "Environment" = "${var.app_environment}"
  }
}

resource "aws_internet_gateway" "aws-igw" {
  vpc_id = aws_vpc.customvpc.id
  tags = {
    "Name" = "${var.app_name}-igw"
    "Environment" = "${var.app_environment}"
  }
}


#resource "aws_instance" "testEC2" {
#  ami           = "ami-0aa7d40eeae50c9a9"
#  instance_type = "t2.micro"
#}

