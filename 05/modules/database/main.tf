resource "yandex_mdb_mysql_database" "my_database" {
  name = var.database_name
  cluster_id = var.my_cluster_id
}

resource "yandex_mdb_mysql_user" "app" {
  cluster_id = var.my_cluster_id
  name       = var.user_name
  password   = var.user_password
  permission {
    database_name = var.database_name
    roles         = [var.user_roles]
  }
}

