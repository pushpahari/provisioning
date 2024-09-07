resource "aws_vpc" "pushpa" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "vpc"
  }
}