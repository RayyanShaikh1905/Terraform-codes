resource "aws_instance" "restored_instance" {
  ami             = "ami-0e7386efdd19d5167"  # Replace with a valid AMI ID
  instance_type   = "t2.micro"
  subnet_id       = aws_subnet.restoredsubnet.id
  security_groups = [aws_security_group.restoredasicsindawssg01.id]

  tags = {
    Name = "RestoredInstance"
  }
}
