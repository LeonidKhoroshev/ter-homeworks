###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}


###variables for exercise 2.1

variable "vm_count" {
  type        = number
  default     = "2"
}

variable "name" {
  type        = string
  default     = "web"
}

variable "platform_id" {
  type        = string
  default     = "standard-v3"
} 

variable "image_id" {
  type        = string
  default     = "fd8gvgtf1t3sbtt4opo6"
}

variable "resourses" {
  type        = map
  default     = {
    web       = {core = 2, memory = 2, core_fraction = 20}
  }
}

variable "web_scheduling_policy_preemptible" {
  type        = bool
  default     = "true"
}

variable "metadata" {
  type        = map
  default     = {serial_port_enable = "1",ssh_keys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCgT8Ny1LD7hTjTan3NOKzgpZ9FEJC7+G7Zfm+bs+9bXZhQ/B6gwjJh0VI6RsVo2wZKsosIc2DZogA+NlWbefQfiC5RKtt/iZMEofBHkhCgxUEHdUEqUkaC7AFfkr4ozrYPKlQOCBbc6S4xJewUmNliXJLrHuv6RZ5TKoIgiKRwaOVT7JqUAnLWyw43+FSpzHUfefLVzaIOVIQV4SEEyl3d/2Cl5gJ/R7sulPomaRwejPi8LG+VZaoF9Wh2JlpCEU7Vm1WKhZ2jd//LlGKoVnqMWlNtSdXVw5B6XZEpCIQfES9DNrlWDyEACFSeSkus30f1Qpe1ZqyIqSnqVgpcANVz root@localhost.localdomain"}
}

variable "security_group_example" {
  type        = string
  default     = "enp4cu7vmpvdpt330kb6"
}

###variables for exercise 2.2

variable "each_vm" {
  type = list(object({  name=string, cpu=number, ram=number, disk=number,preemptible=bool,core_fraction=number }))
  default = [{
    name="main"
    cpu=2
    ram=2
    disk=15
    preemptible=true
    core_fraction=50    
    },
    {
    name="replica"
    cpu=4
    ram=4
    disk=10
    preemptible=true
    core_fraction=20
    }]
  }

###variables for exercise 3

variable "disk_count" {
  type        = number
  default     = "3"
}

variable "disk_name" {
  type        = string
  default     = "disk"
}

variable "disk_size" {
  type        = number
  default     = "1"
}

variable "storage_name" {
  type        = string
  default     = "storage"
}

variable "storage_core" {
  type        = number
  default     = "2"
}

variable "storage_memory" {
  type        = number
  default     = "2"
}

variable "storage_core_fraction" {
  type        = number
  default     = "20"
}

variable "storage_scheduling_policy_preemptible" {
  type        = bool
  default     = "true"
}

variable "storage_image_id" {
  type        = string
  default     = "fd8gvgtf1t3sbtt4opo6"
}

###variables for exersice 4

variable "public_key" {
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCgT8Ny1LD7hTjTan3NOKzgpZ9FEJC7+G7Zfm+bs+9bXZhQ/B6gwjJh0VI6RsVo2wZKsosIc2DZogA+NlWbefQfiC5RKtt/iZMEofBHkhCgxUEHdUEqUkaC7AFfkr4ozrYPKlQOCBbc6S4xJewUmNliXJLrHuv6RZ5TKoIgiKRwaOVT7JqUAnLWyw43+FSpzHUfefLVzaIOVIQV4SEEyl3d/2Cl5gJ/R7sulPomaRwejPi8LG+VZaoF9Wh2JlpCEU7Vm1WKhZ2jd//LlGKoVnqMWlNtSdXVw5B6XZEpCIQfES9DNrlWDyEACFSeSkus30f1Qpe1ZqyIqSnqVgpcANVz root@localhost.localdomain"
}

