
output "web" {
  value = [for server in yandex_compute_instance.web:{fqdn = server.fqdn, id = server.id, name = server.name }]
}

output "vm" {
  value = [for server in yandex_compute_instance.vm:{fqdn = server.fqdn, id = server.id, name = server.name }]        
}

output "storage" {
  value = [for server in [yandex_compute_instance.storage]:{fqdn = server.fqdn, id = server.id, name = server.name}]
}

 
