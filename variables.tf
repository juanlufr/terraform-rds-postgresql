
variable "aws_region" {
  description = "The AWS region to deploy the resources"
  type        = string
  default     = "eu-west-1"
}

variable "db_instance_class" {
  description = "The instance class for the RDS"
  type        = string
  default     = "db.t4g.micro"
}

variable "allocated_storage" {
  description = "The allocated storage in gigabytes"
  type        = number
  default     = 20
}

variable "db_name" {
  description = "The name of the database"
  type        = string
  default     = "mydatabase"
}

variable "db_username" {
  description = "The username for the database"
  type        = string
  default     = "myuser"
}

variable "db_password" {
  description = "The password for the database"
  type        = string
  sensitive   = true
}

variable "db_engine_version" {
  description = "The engine version for the database"
  type        = string
  default     = "12.4"
}

variable "db_instance_identifier" {
  description = "The instance identifier for the RDS"
  type        = string
  default     = "mydatabase"
}
