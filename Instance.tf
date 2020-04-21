resource "aws_instance" "dev" {
    ami = "data.aws_ami.Linux.id"
    instance_type = "t2.micro"
    subnet_id = "aws_subnet.pri.id"
    vpc_security_group_ids = "aws_security_group.ssh.id"

  tags = {
    Name = "HelloWorld"
  }
}


