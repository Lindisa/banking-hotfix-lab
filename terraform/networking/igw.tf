resource "aws_internet_gateway" "banking_igw" {
  vpc_id = aws_vpc.banking_vpc.id

  tags = {
    Name = "banking-igw"
  }
}