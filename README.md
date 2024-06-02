# Configuración de Terraform para RDS en AWS

Este repositorio contiene la configuración de Terraform para crear una instancia de base de datos RDS PostgreSQL en AWS.

## Requisitos

Antes de comenzar, asegúrate de tener lo siguiente:

- Una cuenta de AWS con las credenciales necesarias para crear recursos.
- Terraform instalado en tu sistema local.

## Estructura del Proyecto

```
terraform-rds-postgresql/
├── main.tf
├── variables.tf
└── modules/
    ├── rds/
    │   ├── main.tf
    │   └── variables.tf
    └── vpc/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
    
```
En esta estructura:

main.tf y variables.tf en la raíz del proyecto terraform-rds-postgresql contienen la configuración principal y las variables comunes que se aplican a todos los módulos.

modules/ es un directorio que contiene los módulos reutilizables.

modules/rds/ es el directorio del módulo RDS, que contiene los archivos específicos del módulo para la configuración de RDS.

modules/rds/main.tf y modules/rds/variables.tf son los archivos específicos del módulo RDS.

modules/vpc/ es el directorio del módulo VPC, que contiene los archivos específicos del módulo para la configuración de la VPC.

modules/vpc/main.tf, modules/vpc/variables.tf y modules/vpc/outputs.tf son los archivos específicos del módulo VPC.

Esta estructura organiza tu proyecto de Terraform de manera que los archivos comunes están en la raíz, mientras que los archivos específicos del módulo están dentro del directorio modules/.



## Uso
Para aplicar la configuración de Terraform, sigue estos pasos:

1. Inicializa el directorio de trabajo:
```
terraform init
```

2. Previsualiza los cambios que Terraform aplicará:
```
terraform plan
```

3. En este caso vamos a usar el archivo terraform.tfvars que es dónde debemos dar valor a nuestras variables. Aplica la configuración de Terraform para crear la instancia de base de datos RDS, confirma la aplicación escribiendo 'yes' cuando se solicite:
```
terraform apply -var-file="terraform.tfvars"
```


4 Limpieza
Para eliminar todos los recursos creados por Terraform, puedes ejecutar el siguiente comando:
```
terraform destroy
```

Notas
Asegúrate de revisar y ajustar la configuración según tus necesidades específicas antes de aplicarla.
Este proyecto es solo un ejemplo y puede requerir modificaciones adicionales dependiendo de tus requisitos y entorno.
