resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.ganesh.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "public_rt"
  }
}

resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.ganesh.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat.id
  }

  tags = {
    Name = "private_rt"
  }
}

resource "aws_route_table_association" "a1" {
  subnet_id      = aws_subnet.pub_sub1.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "a2" {
  subnet_id      = aws_subnet.pub_sub2.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "a3" {
  subnet_id      = aws_subnet.pri_sub1.id
  route_table_id = aws_route_table.private_rt.id
}

resource "aws_route_table_association" "a4" {
  subnet_id      = aws_subnet.pri_sub2.id
  route_table_id = aws_route_table.private_rt.id
}