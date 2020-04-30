resource "aws_launch_configuration" "mylc" {
  name_prefix   = "terraform-lc"
  image_id      =  "${data.aws_ami.ubuntu.id}"   
  instance_type = "t2.micro"

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "myasg" {
  name                 = "terraform-myasg"
  launch_configuration = "aws_launch_configuration.as_conf.name"
  min_size             = 2
  max_size             = 2

  lifecycle {
    create_before_destroy = true
  }
}
