resource "aws_route_table_association" "team2_route_public_a" {
  subnet_id      = aws_subnet.team2_public_a.id
  route_table_id = aws_route_table.team2_route_public.id
}

resource "aws_route_table_association" "team2_route_public_c" {
  subnet_id      = aws_subnet.team2_public_c.id
  route_table_id = aws_route_table.team2_route_public.id
}

resource "aws_route_table_association" "team2_route_private_a" {
  subnet_id      = aws_subnet.team2_private_a.id
  route_table_id = aws_route_table.team2_route_private.id
}

resource "aws_route_table_association" "team2_route_private_c" {
  subnet_id      = aws_subnet.team2_private_c.id
  route_table_id = aws_route_table.team2_route_private.id
}

resource "aws_route_table_association" "team2_route_db_a" {
  subnet_id      = aws_subnet.team2_dba_a.id
  route_table_id = aws_route_table.team2_route_private.id
}

resource "aws_route_table_association" "team2_route_db_c" {
  subnet_id      = aws_subnet.team2_dba_c.id
  route_table_id = aws_route_table.team2_route_private.id
}