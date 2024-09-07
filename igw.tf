resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.ganesh.id

  tags = {
    Name = "igw"
  }
}