
output "web" {
 value = {
     for k, v in yandex_compute_instance.web:
     k => ({fqdn=v.fqdn,id=v.id,name=v.name})
     }
}

output "vm" {
 value = {
     for k,v in yandex_compute_instance.vm:
     k => ({fqdn=v.fqdn,id=v.id,name=v.name})
     }
}

output "storage" {
 value = {
     for k,v in [yandex_compute_instance.storage]:
     k => ({fqdn=v.fqdn,id=v.id,name=v.name})
     }
}
