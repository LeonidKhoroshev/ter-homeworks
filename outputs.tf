output "web" {
   value = {
     for k,v in yandex_compute_instance.web:
     k => tomap({fqdn=v.fqdn,id=v.id,name=v.name})
     }
   }

output "vm" {
   value = {
     for k,v in yandex_compute_instance.vm:
     k => tomap({fqdn=v.fqdn,id=v.id,name=v.name})
     }
   }
