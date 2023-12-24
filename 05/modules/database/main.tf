resource "yandex_ydb_database_dedicated" "my_database" {
  name = var.database_name
  folder_id = var.folder_id  
  
  resource_preset_id = var.resource_preset_id
  scale_policy {
    fixed_scale {
      size = var.size
    }
  }
  storage_config {
    group_count = var.group_count
    storage_type_id = var.storage_type_id
  }

  location_id = var.zone
  network_id  = var.network_id
  subnet_ids = [var.subnet_ids ]
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

