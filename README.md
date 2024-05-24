# Configuración de Terraform para RDS en AWS

Este repositorio contiene la configuración de Terraform para crear una instancia de base de datos RDS PostgreSQL en AWS.

## Estructura del Proyecto

El proyecto está organizado de la siguiente manera:

- **main.tf**: Archivo principal de configuración de Terraform que define los recursos necesarios para la instancia de base de datos RDS.
- **variables.tf**: Archivo que define las variables utilizadas en la configuración de Terraform.
- **terraform.tfvars**: Archivo de variables de Terraform que contiene los valores de las variables definidas en variables.tf.
- **README.md**: Este archivo.

## Requisitos

Antes de comenzar, asegúrate de tener lo siguiente:

- Una cuenta de AWS con las credenciales necesarias para crear recursos.
- Terraform instalado en tu sistema local.

## Configuración

Antes de aplicar la configuración de Terraform, asegúrate de configurar las siguientes variables en el archivo `terraform.tfvars`:

```hcl
db_instance_identifier = "my-rds-instance"
db_name                = "mydatabase"
db_username            = "admin"
db_password            = "mypassword"
db_engine_version      = "12.5"
db_instance_class      = "db.t3.micro"
allocated_storage      = 20
vpc_id                 = "your-vpc-id"
subnet_ids             = ["subnet-1", "subnet-2"]
Asegúrate de reemplazar los valores con los apropiados para tu configuración.

Uso
Para aplicar la configuración de Terraform, sigue estos pasos:

Inicializa el directorio de trabajo:
terraform init

Previsualiza los cambios que Terraform aplicará:
terraform plan

Aplica la configuración de Terraform para crear la instancia de base de datos RDS:
terraform apply

Confirma la aplicación escribiendo yes cuando se solicite.

Limpieza
Para eliminar todos los recursos creados por Terraform, puedes ejecutar el siguiente comando:
terraform destroy

Notas
Asegúrate de revisar y ajustar la configuración según tus necesidades específicas antes de aplicarla.
Este proyecto es solo un ejemplo y puede requerir modificaciones adicionales dependiendo de tus requisitos y entorno.
