resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/24" # 256 direcciones IP (10.0.0.0 - 10.0.0.255)
  
  tags = {
    Name = "test_terraform_vpc"
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.0.0/26"  # 64 direcciones IP (10.0.0.0 - 10.0.0.63)
  availability_zone = "eu-west-1a"

  tags = {
    Name = "subnet1_terraform"
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.0.64/26"  # 64 direcciones IP (10.0.0.64 - 10.0.0.127)
  availability_zone = "eu-west-1b"

  tags = {
    Name = "subnet2_terraform"
  }
}
