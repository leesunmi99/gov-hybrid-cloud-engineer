resource "aws_subnet" "team2_public_a" {
  vpc_id            = aws_vpc.team2_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-northeast-2a"
  map_public_ip_on_launch = true
  tags = {
    Name = "team2-public1"
  }
}

resource "aws_subnet" "team2_private_a" {
  vpc_id            = aws_vpc.team2_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    Name = "team2-private1"
  }
}

resource "aws_subnet" "team2_public_c" {
  vpc_id            = aws_vpc.team2_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "ap-northeast-2c"
  map_public_ip_on_launch = true
  tags = {
    Name = "team2-public2"
  }
}

resource "aws_subnet" "team2_private_c" {
  vpc_id            = aws_vpc.team2_vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    Name = "team2-private2"
  }
}

resource "aws_subnet" "team2_dba_a" {
  vpc_id            = aws_vpc.team2_vpc.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    Name = "team2-dba-a"
  }
}

resource "aws_subnet" "team2_dba_c" {
  vpc_id            = aws_vpc.team2_vpc.id
  cidr_block        = "10.0.6.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    Name = "team2-dba-c"
  }
}
