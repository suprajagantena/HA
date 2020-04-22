resource "aws_launch_configuration" "as_conf" {
name          = "web_config"
  image_id      = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
}
