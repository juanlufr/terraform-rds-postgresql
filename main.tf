### main.tf ###

provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr_block            = var.vpc_cidr_block
  subnet1_cidr_block        = var.subnet1_cidr_block
  subnet2_cidr_block        = var.subnet2_cidr_block
  subnet1_availability_zone = var.subnet1_availability_zone
  subnet2_availability_zone = var.subnet2_availability_zone
  vpc_name                  = var.vpc_name
  subnet1_name              = var.subnet1_name
  subnet2_name              = var.subnet2_name
}

module "rds" {
  source = "./modules/rds"

  vpc_id                 = module.vpc.vpc_id
  subnet_ids             = module.vpc.subnet_ids
  db_instance_class      = var.db_instance_class
  allocated_storage      = var.allocated_storage
  db_name                = var.db_name
  db_username            = var.db_username
  db_password            = var.db_password
  db_engine_version      = var.db_engine_version
  db_instance_identifier = var.db_instance_identifier
}

