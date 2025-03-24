resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.asicsindawsvpc01.id

  route {
    cidr_block = "10.10.0.0/24"
  }

  tags = {
    Name = "asicsindawsrt00"
  }
}

resource "aws_route_table" "asicsindawsrt01" {
  vpc_id = aws_vpc.asicsindawsvpc01.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "asicsindawsrt01"
  }
}




resource "aws_route_table" "restorert" {
  vpc_id = aws_vpc.restored_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "asicsindrestoredawsrt01"
  }
}