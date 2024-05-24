provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./modules/vpc"
}

module "rds" {
  source                 = "./modules/rds"
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

