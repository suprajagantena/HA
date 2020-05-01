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
  launch_configuration = "aws_launch_configuration.mylc.id"
  min_size             = 2
  max_size             = 2

  lifecycle {
    create_before_destroy = true
  }
}
