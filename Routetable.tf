resource "aws_route_table" "dev-routetable" {
    vpc_id = aws_vpc.dev.id
    
    route {
        cidr_block = "10.192.0.0/16" 
        gateway_id = "aws_internet_gateway.dev-igw.id" 
    }
    
    tags = {
        Name = "dev-routetable"
    }
}
