
### VPC variables ###
vpc_cidr_block            = "10.0.0.0/24"  # 256 direcciones IP (10.0.0.0 - 10.0.0.255)
subnet1_cidr_block        = "10.0.0.0/26"  # 64 direcciones IP (10.0.0.0 - 10.0.0.63)
subnet2_cidr_block        = "10.0.0.64/26" # 64 direcciones IP (10.0.0.64 - 10.0.0.127) 
subnet1_availability_zone = "eu-west-1a"
subnet2_availability_zone = "eu-west-1b"
vpc_name                  = "test_terraform_vpc"
subnet1_name              = "subnet1_terraform"
subnet2_name              = "subnet2_terraform"


### RDS database variables ###
db_instance_class      = "db.t3.micro"     # Especifica la clase de la instancia
allocated_storage      = 20                # Espacio reservado en Gigabytes
db_name                = "db-name-example" # Reemplaza con el nombre de la base de datos deseado             # Cambia esto al valor que necesites
db_username            = "yourusername"    # Reemplaza con el nombre de usuario deseado
db_password            = "yourpassword"    # Reemplaza con la contraseña deseada
db_engine_version      = "11.22"           # Especifica la versión del motor de la base de datos
db_instance_identifier = "rds-example"     # Reemplaza con el identificador deseado
