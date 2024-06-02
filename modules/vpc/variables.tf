
variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "subnet1_cidr_block" {
  description = "The CIDR block for the first subnet"
  type        = string
}

variable "subnet2_cidr_block" {
  description = "The CIDR block for the second subnet"
  type        = string
}

variable "subnet1_availability_zone" {
  description = "The availability zone for the first subnet"
  type        = string
}

variable "subnet2_availability_zone" {
  description = "The availability zone for the second subnet"
  type        = string
}

variable "vpc_name" {
  description = "The name tag for the VPC"
  type        = string
}

variable "subnet1_name" {
  description = "The name tag for the first subnet"
  type        = string
}

variable "subnet2_name" {
  description = "The name tag for the second subnet"
  type        = string
}