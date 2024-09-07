resource "aws_vpc" "ganesh" {
  cidr_block       = "10.0.0.0/16"
tags = {
    Name = "ganesh_vpc"
  }
}
    
