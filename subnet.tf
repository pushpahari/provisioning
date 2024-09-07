resource "aws_subnet" "public_sub1" {
  for_each = { for idx, cidr in var.public_cidr_blocks : idx => cidr }
  vpc_id     = aws_vpc.pushpa.id
  cidr_block = each.value

  tags = {
    Name = element(var.public_subnet_names, each.key)
  }
}

resource "aws_subnet" "public_sub2" {
  vpc_id     = aws_vpc.pushpa.id
  cidr_block = var.public_cidr_blocks

  tags = {
    Name = element(var.public_subnet_names, each.key)
  }
}

resource "aws_subnet" "private_sub1" {
  vpc_id     = aws_vpc.pushpa.id
  cidr_block = var.private_cidr_blocks

  tags = {
    Name = element(var.private_subnet_names, each.key)
  }
}

resource "aws_subnet" "private_sub2" {
  vpc_id     = aws_vpc.pushpa.id
  cidr_block = var.private_cidr_blocks

  tags = {
    Name = element(var.private_subnet_names, each.key)
  }
}