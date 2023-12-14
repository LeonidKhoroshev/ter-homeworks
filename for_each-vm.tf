resource "yandex_compute_instance" "vm" {
  depends_on  = [yandex_compute_instance.web]
  for_each =  { for vm in var.each_vm: index(var.each_vm,vm)=> vm }
  name        = each.value.name
  platform_id = var.platform_id

resources {
    cores  = each.value.cpu
    memory = each.value.ram
    core_fraction = each.value.core_fraction 
  }

scheduling_policy {
    preemptible = each.value.preemptible
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
      image_id = var.image_id
      size = each.value.disk
    }   
  }



 metadata = local.vm_metadata
}

