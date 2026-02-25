resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.banking_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.banking_igw.id
  }

  tags = {
    Name = "banking-public-rt"
  }
}