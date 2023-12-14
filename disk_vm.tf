resource "yandex_compute_disk" "disk" {
  count   = var.disk_count
  name  = "${var.disk_name}-${count.index + 1}"
  size  = var.disk_size
}

resource "yandex_compute_instance" "storage" {
  depends_on  = [yandex_compute_instance.vm]
  name = var.storage_name
  resources {
        cores           = var.storage_core
        memory          = var.storage_memory
        core_fraction   = var.storage_core_fraction
  }

scheduling_policy {
    preemptible = var.storage_scheduling_policy_preemptible
  }

 network_interface {
    subnet_id          = yandex_vpc_subnet.develop.id
    nat                = true
    security_group_ids = [
      var.security_group_example
    ]
  }

boot_disk {
    initialize_params {
      image_id = var.storage_image_id
    }
  }

dynamic "secondary_disk" {
   for_each = "${yandex_compute_disk.disk.*.id}"
   content {
        disk_id = yandex_compute_disk.disk["${secondary_disk.key}"].id
   }
  }

metadata = local.vm_metadata
}
