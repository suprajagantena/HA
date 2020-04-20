resource "aws_route_table" "dev-routetable" {
    vpc_id = aws_vpc.dev.id
    
    route {
        cidr_block = aws_subnet.pub.id
        gateway_id = aws_internet_gateway.dev-igw.id
    }
    
    tags = {
        Name = "dev-routetable"
    }
}
