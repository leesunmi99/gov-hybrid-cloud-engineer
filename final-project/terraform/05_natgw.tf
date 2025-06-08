resource "aws_eip" "team2_eip" {
  domain = "vpc"
}

resource "aws_nat_gateway" "team2_ngw" {
  allocation_id = aws_eip.team2_eip.id
  subnet_id     = aws_subnet.team2_public_a.id
  tags = {
    Name = "team2-ngw"
  }
}

output "eip_public_ip" {
    value = aws_eip.team2_eip.public_ip
}