###new cloud vars for exercise 2

variable "vm_web_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  }

variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  }

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v2"
  }

#variable "vm_web_recources_core" {
#  type        = number
#  default     = "2"
#  }

#variable "vm_web_recources_memory" {
#  type        = number
#  default     = "2"
#  }

#variable "vm_web_recources_core_fraction" {
#  type        = number
#  default     = "20"
#  description = "guaranteed vCPU, for yandex cloud - 20, 50 or 100"


variable "vm" {
  type              = map
  default           = {
    web_resourses   = {core = 2, memory = 2, core_fraction = 20}
    db_resourses    = {core = 2, memory = 2, core_fraction = 20}
  }
 }



variable vm_web_scheduling_policy_preemptible {
  type        = bool
  default     = "true"
  }

variable "vm_web_boot_disk_image_id" {
  type        = string
  default     = "yandex_compute_image.ubuntu.image_id"
  }

variable "vm_web_network_interface_network_id" {
  type        = string
  default     = "e9b1umt1rjp7si51sgc5"
  }

###new cloud vars for exercise 3

variable "vm_db_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  }

variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  }

variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v2"
  }

#variable "vm_db_recources_core" {
#  type        = number
#  default     = "2"
#  }

#variable "vm_db_recources_memory" {
#  type        = number
#  default     = "2"
#  }

#variable "vm_db_recources_core_fraction" {
#  type        = number
#  default     = "20"
#  description = "guaranteed vCPU, for yandex cloud - 20, 50 or 100 "
#  }
variable vm_db_scheduling_policy_preemptible {
  type        = bool
  default     = "true"
  }

variable "vm_db_boot_disk_image_id" {
  type        = string
  default     = "yandex_compute_image.ubuntu.image_id"
  }

variable "vm_db_network_interface_network_id" {
  type        = string
  default     = "e9b1umt1rjp7si51sgc5"
  }

variable "vm_metadata" {
  type      = map
  default   = {serial_port_enable = "1", ssh_keys = "ubuntu:AAAAB3NzaC1yc2EAAAADAQABAAABAQCgT8Ny1LD7hTjTan3NOKzgpZ9FEJC7+G7Zfm+bs+9bXZhQ/B6gwjJh0VI6RsVo2wZKsosIc2DZogA+NlWbefQfiC5RKtt/iZMEofBHkhCgxUEHdUEqUkaC7AFfkr4ozrYPKlQOCBbc6S4xJewUmNliXJLrHuv6RZ5TKoIgiKRwaOVT7JqUAnLWyw43+FSpzHUfefLVzaIOVIQV4SEEyl3d/2Cl5gJ/R7sulPomaRwejPi8LG+VZaoF9Wh2JlpCEU7Vm1WKhZ2jd//LlGKoVnqMWlNtSdXVw5B6XZEpCIQfES9DNrlWDyEACFSeSkus30f1Qpe1ZqyIqSnqVgpcANVz root@localhost.localdomain

}
