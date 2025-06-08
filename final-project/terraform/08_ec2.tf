resource "aws_instance" "team2_ec2_bastion" {
  ami                    = "ami-04341a215040f91bb" # ec2를 생성할 OS의 이미지
  instance_type          = "t2.small"
  key_name               = "team2"				   # ssh 접속에 필요한 key
  vpc_security_group_ids = [aws_security_group.team2_sg.id]
  availability_zone      = "ap-northeast-2a"
  private_ip             = "10.0.1.11"
  subnet_id              = aws_subnet.team2_public_a.id

  tags = {
    Name = "team2-ec2-bastion"
  }
}

output "team2-ec2-bastionip" {
  value = aws_instance.team2_ec2_bastion.public_ip
}