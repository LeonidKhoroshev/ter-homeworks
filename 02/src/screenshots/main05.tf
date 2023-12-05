resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}
resource "yandex_vpc_subnet" "develop" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr
}

data "yandex_compute_image" "ubuntu" {
  family = var.vm_web_family
}

resource "yandex_compute_instance" "platform" {
  name        = local.vm_web_instance_name
  platform_id = var.vm_web_platform_id
  resources {
    cores         = var.vm_web_recources_core
    memory        = var.vm_web_recources_memory
    core_fraction = var.vm_web_recources_core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = "fd8b6qcrqbaqtnuumbph"
    }
  }
  scheduling_policy {
    preemptible = var.vm_web_scheduling_policy_preemptible
  }
  network_interface {
    subnet_id = var.vm_web_network_interface_network_id
    nat       = true
  }

  metadata = {
    serial-port-enable = 1
    ssh-keys           = "ubuntu:${var.vms_ssh_root_key}"
  }

}

data "yandex_compute_image" "ubuntu2" {
  family = var.vm_db_family
}
resource "yandex_compute_instance" "platform2" {
  name        = local.vm_db_instance_name
  platform_id = var.vm_db_platform_id
  resources {
    cores         = var.vm_db_recources_core
    memory        = var.vm_db_recources_memory
    core_fraction = var.vm_db_recources_core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = "fd8b6qcrqbaqtnuumbph"
    }
  }
  scheduling_policy {
    preemptible = var.vm_db_scheduling_policy_preemptible
  }
  network_interface {
    subnet_id = var.vm_db_network_interface_network_id
    nat       = true
  }

  metadata = {
    serial-port-enable = 1
  name        = local.vm_db_instance_name
  platform_id = var.vm_db_platform_id
  resources {
    cores         = var.vm_db_recources_core
    memory        = var.vm_db_recources_memory
    core_fraction = var.vm_db_recources_core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = "fd8b6qcrqbaqtnuumbph"
    }
  }
  scheduling_policy {
    preemptible = var.vm_db_scheduling_policy_preemptible
  }
  network_interface {
    subnet_id = var.vm_db_network_interface_network_id
    nat       = true
  }

  metadata = {
    serial-port-enable = 1
    ssh-keys           = "ubuntu:${var.vms_ssh_root_key}"
  }

}
