resource "aws_instance" "web" {
  ami           = "ami-00bb6a80f01f03502"
  instance_type = "t2.micro"
  availability_zone = "ap-south-1a"
  subnet_id     = aws_subnet.asicsindawssubnet01.id
  security_groups = [aws_security_group.asicsindawssg01.id]
  
  # Corrected reference

  tags = {
    Name = "Main-server"
  }
  root_block_device {
    volume_size           = 30
    volume_type           = "gp3"
    delete_on_termination = true
  }

}
