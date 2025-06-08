resource "aws_db_subnet_group" "team2_db_subnetgroup" {
  name       = "team2-db-subnetgroup"
  subnet_ids = [aws_subnet.team2_dba_a.id, aws_subnet.team2_dba_c.id]
}

resource "aws_db_instance" "team2_db" {
  allocated_storage      = 20
  storage_type           = "gp2"
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = "db.t2.micro"
  db_name                = "test"
  identifier             = "mydb"
  username               = "admin"
  password               = "123456789"
  parameter_group_name   = "default.mysql8.0"
  availability_zone      = "ap-northeast-2a"
  publicly_accessible    = true
  db_subnet_group_name   = aws_db_subnet_group.team2_db_subnetgroup.id
  vpc_security_group_ids = [aws_security_group.team2_sg.id]
  skip_final_snapshot    = true
  tags = {
    Name = "team2-db"
  }
}
