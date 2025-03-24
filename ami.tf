resource "aws_ami_from_instance" "example" {
  name               = "terraform-example"
  source_instance_id = "i-0453820f4a5cb5df3"
  depends_on = [aws_instance.web]
}
resource "aws_ami_from_instance" "source-AMI" {
  name               = "terraform-example-01"
  source_instance_id = "i-0453820f4a5cb5df3"
  depends_on = [aws_instance.web]
}