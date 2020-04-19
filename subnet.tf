resource “aws_subnet” “pub” {
    vpc_id = “aws_vpc.dev.id”
    cidr_block = “10.192.1.0/24”
    map_public_ip_on_launch = “true” 
    availability_zone = “eu-east-1a”
    tags {
        Name = “dev-subnet-public-1”
    }
}
