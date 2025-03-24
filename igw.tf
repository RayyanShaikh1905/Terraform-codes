resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.asicsindawsvpc01.id

  tags = {
    Name = "asicsindawsigw01"
  }
}