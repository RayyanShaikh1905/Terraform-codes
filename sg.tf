resource "aws_security_group" "asicsindawssg01" {
  name        = "asicsindsourceawssg01"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.asicsindawsvpc01.id
  tags = {
    Name = "asicsindawssg01"
  }

}
 

resource "aws_security_group" "restoredasicsindawssg01" {
  name        = "asicsindrestoredawssg01"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.restored_vpc.id
  tags = {
    Name = "restoredasicsindawssg01"
  }


   
    ingress {
    description      = "Allow ssh from client ip"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = "61.246.165.203/32"
  }

ingress {
    description      = "Allow ssh from client ip"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = "14.143.210.18/32"
  }

  ingress {
    description      = "Allow ssh from eic"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = "10.10.0.0/24"
  }

ingress {
    description      = "Allow https from anywhere"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = "0.0.0.0/0"
  }

ingress {
    description      = "Allow http from anywhere"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = "0.0.0.0/0"
  }

  ingress {
    description      = "Allow access for MYSQL/Aurora connection from client ip"
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    cidr_blocks      = "14.143.210.18/32"
  }


  ingress {
    description      = "Allow access for MYSQL/Aurora connection from client ip"
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    cidr_blocks      = "61.246.165.203/32"
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

}







