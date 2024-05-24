
resource "aws_security_group" "rds_sg" {
  vpc_id = var.vpc_id

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Asegúrate de restringir esto según tus necesidades de seguridad
    # Como es una prueba de Terraform no restringimos la seguridad
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "rds_sg_terraform"
  }
}

resource "aws_db_subnet_group" "main" {
  name       = "main_subnet_group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "main_subnet_group_terraform"
  }
}

resource "aws_db_instance" "postgres" {
  allocated_storage    = var.allocated_storage
  engine               = "postgres"
  #engine_version      = var.db_engine_version
  engine_version       = "11.22"  # Para la prueba lo meto directamente
  #instance_class      = var.db_instance_class
  instance_class       = "db.t3.micro" # Para la prueba lo meto directamente
  username             = var.db_username
  password             = var.db_password
  db_subnet_group_name = aws_db_subnet_group.main.name
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  skip_final_snapshot  = true
  identifier           = var.db_instance_identifier

  tags = {
    Name = var.db_name
  }
}
