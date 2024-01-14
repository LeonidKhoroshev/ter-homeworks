resource "yandex_mdb_mysql_cluster" "example" {
  name                = var.cluster_name
  environment         = var.cluster_env
  network_id          = var.network_id
  version             = var.version_mysql
  security_group_ids  = [var.security_group]
  deletion_protection = var.deletion_protection

  resources {
    resource_preset_id = var.resource_preset_id
    disk_type_id       = var.disk_type
    disk_size          = var.disk_size
  }


  dynamic "host" {
    for_each          =  var.HA == true ? [2]:[1]
    content {
    zone              =  var.zone
    subnet_id         =  var.subnet_ids
    }
  }

}



