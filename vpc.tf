resource "aws_vpc" "dev" {
  cidr_block       = "10.192.0.0/16"
  instance_tenancy = "dedicated"
  #region = us-east-1

  tags = {
    Name = "Dev"
  }
}
