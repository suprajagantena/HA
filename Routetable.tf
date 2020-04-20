resource "aws_route_table" "dev-routetable" {
    vpc_id = aws_vpc.main-vpc.id
    
    route {
        cidr_block = "10.192.1.0/24" 
        gateway_id = "aws_internet_gateway.dev-igw.id}" 
    }
    
    tags = {
        Name = "dev-routetable"
    }
}
