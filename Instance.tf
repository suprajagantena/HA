resource "aws_instance" "web1" {
    ami = "${lookup(var.AMI, var.AWS_REGION)}"
    instance_type = "t2.micro"
    subnet_id = "aws_subnet.pri.id"
    vpc_security_group_ids = "aws_security_group.ssh.id"
    
}