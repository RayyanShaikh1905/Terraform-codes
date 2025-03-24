resource "aws_subnet" "asicsindawssubnet01" {
  vpc_id     = aws_vpc.asicsindawsvpc01.id
  cidr_block = "10.10.0.0/27"
  map_public_ip_on_launch=true
  
}

resource "aws_subnet" "asicsindawssubnet02" {
  vpc_id     = aws_vpc.asicsindawsvpc01.id
  cidr_block = "10.10.0.32/27"
  map_public_ip_on_launch=true
  
}

resource "aws_subnet" "asicsindawssubnet03" {
  vpc_id     = aws_vpc.asicsindawsvpc01.id
  cidr_block = "10.10.0.64/27"
  map_public_ip_on_launch=true
  
}

resource "aws_subnet" "asicsindawssubnet04" {
  vpc_id     = aws_vpc.asicsindawsvpc01.id
  cidr_block = "10.10.0.96/27"
  map_public_ip_on_launch=true
  
}
resource "aws_subnet" "restoredsubnet" {
  vpc_id     = aws_vpc.restored_vpc.id
  cidr_block = "172.16.0.0/27"
  map_public_ip_on_launch=true
  
}
