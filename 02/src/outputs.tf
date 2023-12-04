output "vm_external_ip_address_1" {
  value = yandex_compute_instance.platform.network_interface.0.nat_ip_address
  description = "netology-develop-platform-web external ip"
}


output "vm_external_ip_address_2" {
  value = yandex_compute_instance.platform2.network_interface.0.nat_ip_address
  description = "netology-develop-platform-web external ip"
}
