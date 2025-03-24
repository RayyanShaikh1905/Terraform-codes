/*resource "aws_ebs_volume" "example" {
  availability_zone = "ap-south-1a"
  size              = 20
  type = "gp3"
 
  tags = {
    Name = "root volume"
  }
}
resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = "vol-0b317dfcb4f487f53"
  instance_id = "i-00c025ac4d4b127b9"
}

resource "aws_instance" "web" {
  ami               = "ami-0cbf21f7799a272ce"
  availability_zone = "ap-south-1a"
  instance_type     = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }*/
