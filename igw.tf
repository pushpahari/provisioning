resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.pushpa.id

  tags = {
    Name = "igw"
  }
}