resource "aws_internet_gateway" "team2_igw" {
  vpc_id = aws_vpc.team2_vpc.id
  tags = {
    Name = "team2-igw"
  }
}
