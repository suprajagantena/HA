resource "aws_route_table" "dev-routetable" {
    vpc_id = aws_vpc.dev.id
    
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.dev-igw.id
    }
    
    tags = {
        Name = "dev-routetable"
    }
}
resource "aws_route_table_association" "dev-public-subnet"{
    subnet_id = aws_subnet.pub.id
    route_table_id = aws_route_table.dev-routetable.id
}



