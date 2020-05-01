resource "aws_launch_configuration" "mylc" {
  name_prefix   = "mylc"
  image_id      =  "ami-0323c3dd2da7fb37d"  
  instance_type = "t2.micro"
  
    lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "myasg" {
  name                 = "terraform-myasg"
  launch_configuration = "${aws_launch_configuration.mylc.name}"
  wait_for_capacity_timeout = "8m"
  vpc_zone_identifier  = ["${aws_subnet.pri.id}","${aws_subnet.pri.id}"]
  min_size             = 2
  max_size             = 2
  
  lifecycle {
    create_before_destroy = true
  }
}
