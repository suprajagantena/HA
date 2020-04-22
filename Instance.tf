resource "aws_instance" "dev" {
    ami = "ami-0323c3dd2da7fb37d"
    instance_type = "t2.micro"
    subnet_id = ["${aws_subnet.pri.id}"]
    vpc_security_group_ids = ["aws_security_group.ssh.id"]

  tags = {
    Name = "HelloWorld"
  }
}


