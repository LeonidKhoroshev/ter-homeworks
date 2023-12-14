resource "yandex_compute_instance" "web" {
  count = var.vm_count
  name        = "${var.name}-${count.index + 1}"
  platform_id = var.platform_id
  resources {
    cores         = var.resourses.web.core
    memory        = var.resourses.web.memory
    core_fraction = var.resourses.web.core_fraction
  }
    scheduling_policy {
    preemptible = var.web_scheduling_policy_preemptible
  }

  network_interface {
    subnet_id          = yandex_vpc_subnet.develop.id
    nat                = false
    security_group_ids = [
      var.security_group_example
    ]
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
    }
  }
  metadata = var.metadata
}
