# AWS VPC 생성
resource "aws_vpc" "team2_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = "true"
  enable_dns_support   = "true"
  tags = {
    Name = "team2-vpc"
  }
}
