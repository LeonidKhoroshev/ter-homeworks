module "vpc_db" {
  source          = "./modules/vpc"
  env_name        = var.env_name
  subnets         = var.subnets
}

module "cluster" {
  source          = "./modules/mysql"
  cluster_name    = var.cluster_name
  network_id      = var.network_id
  subnet_ids      = var.subnet_id
  security_group  = var.securiry_group
  HA              = var.HA
}

module "db" {
  source          = "./modules/database"
  database_name   = var.db_name
  user_name       = var.user_name
  network_id      = var.network_id
  subnet_ids      = var.subnet_id
  my_cluster_id   = var.my_cluster_id
}

