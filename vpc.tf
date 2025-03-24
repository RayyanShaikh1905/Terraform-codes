/*resource "aws_vpc" "asicsindawsvpc01" {
  cidr_block       = "10.10.0.0/24"
  instance_tenancy = "default"

  tags = {
    Name = "asicsindawsvpc01"
  }
}*/

resource "aws_vpc" "restored_vpc" {
  cidr_block       = "192.168.0.0/24"
  instance_tenancy = "default"
  enable_dns_hostnames = true

  tags = {
    Name = "restored_vpc"
  }
}
