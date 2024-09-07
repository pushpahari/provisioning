resource "aws_subnet" "pub_sub1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "public_subnet1"
  }
}

resource "aws_subnet" "pub_sub2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "public_subnet2"
  }
}

resource "aws_subnet" "pri_sub1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "private_subnet1"
  }
}

resource "aws_subnet" "pri_sub2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.4.0/24"

  tags = {
    Name = "private_subnet2"
  }
}