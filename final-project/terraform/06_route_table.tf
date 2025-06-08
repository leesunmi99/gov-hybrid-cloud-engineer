resource "aws_route_table" "team2_route_public" {
  vpc_id = aws_vpc.team2_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.team2_igw.id
  }
  tags = {
    Name = "team2-route-public"
  }
}

resource "aws_route_table" "team2_route_private" {
  vpc_id = aws_vpc.team2_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.team2_ngw.id
  }
  tags = {
    Name = "team2-route-private"
  }
}